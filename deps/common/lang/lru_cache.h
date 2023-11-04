/* Copyright (c) 2021 OceanBase and/or its affiliates. All rights reserved.
miniob is licensed under Mulan PSL v2.
You can use this software according to the terms and conditions of the Mulan PSL v2.
You may obtain a copy of Mulan PSL v2 at:
         http://license.coscl.org.cn/MulanPSL2
THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
See the Mulan PSL v2 for more details. */

//
// Created by Wangyunlai on 2022.09.02
//

#pragma once

#include <functional>
#include <unordered_set>

/**
 * 
 * 命名空间：
 * 代码定义了一个命名空间 common，其中包含了 LruCache 类的实现。
 * 
 * LruCache 类：
 * LruCache 类用于实现一个 LRU 缓存。
 * 类的模板参数包括：
 * Key：缓存的键的类型。
 * Value：缓存的值的类型。
 * Hash：键的哈希函数，默认为 std::hash<Key>。
 * Pred：键的比较函数，默认为 std::equal_to<Key>。
 * 
 * 内部类：
ListNode 类：这是双向链表的节点类，用于存储键-值对。
Key key_：节点的键。
Value value_：节点的值。
ListNode *prev_ 和 ListNode *next_：用于维护双向链表的指针。
PListNodeHasher 类：这是用于计算 ListNode 对象的哈希值的哈希函数。

通过重载 operator() 来计算哈希值。
PListNodePredicator 类：这是用于比较 ListNode 对象的相等性的比较函数。

通过重载 operator() 来进行比较。
公共方法：

LruCache(size_t reserve = 0)：构造函数，用于初始化 LRU 缓存。可选参数 reserve 用于指定初始容量。

~LruCache()：析构函数，用于销毁 LRU 缓存，释放资源。

destroy()：销毁缓存，释放所有节点。

count()：返回缓存中的节点数量。

get(const Key &key, Value &value)：根据键获取值，如果存在，返回 true，并将值存储在 value 中。

put(const Key &key, const Value &value)：将键-值对添加到缓存中，如果键已存在，则更新值。

remove(const Key &key)：从缓存中移除指定键的节点。

pop(Value *&value)：暂时未实现。

foreach 和 foreach_reverse：遍历缓存中的节点，执行指定的函数。

内部方法：

lru_touch(ListNode *node)：将节点移到链表头部，表示它是最近使用的节点。

lru_push(ListNode *node)：将节点插入到链表头部。

lru_remove(ListNode *node)：从缓存中移除指定节点。

私有成员变量：

SearchType searcher_：使用 std::unordered_set 实现的哈希表，用于快速查找节点。
ListNode *lru_front_ 和 ListNode *lru_tail_：指向双向链表的头部和尾部的指针。
*/


namespace common {

template <typename Key, typename Value, typename Hash = std::hash<Key>, typename Pred = std::equal_to<Key>>

/**
 * 
 * @brief LRU缓存
 * @details 
 * 1. 使用双向链表来存储数据，链表头部是最近使用的数据，链表尾部是最久未使用的数据。
 * 2. 使用哈希表来存储数据，哈希表的key是数据的key，哈希表的value是数据的指针。
 * 3. 当数据被访问时，将数据移动到链表头部。
 * 4. 当数据被插入时，将数据插入到链表头部。
 * @author zzk
 *
*/
class LruCache { // LRU缓存


  class ListNode {// 双向链表节点
  public:
    Key key_;
    Value value_;

    ListNode *prev_ = nullptr;
    ListNode *next_ = nullptr;

  public:
    ListNode(const Key &key, const Value &value) : key_(key), value_(value)
    {}
  };

  class PListNodeHasher {// 双向链表节点的哈希函数
  public:
    size_t operator()(ListNode *node) const
    {
      if (node == nullptr) {
        return 0;
      }
      return hasher_(node->key_);
    }

  private:
    Hash hasher_;
  };

  class PListNodePredicator { // 双向链表节点的比较函数
  public:
    bool operator()(ListNode *const node1, ListNode *const node2) const
    {
      if (node1 == node2) {
        return true;
      }

      if (node1 == nullptr || node2 == nullptr) {
        return false;
      }

      return pred_(node1->key_, node2->key_);
    }

  private:
    Pred pred_;
  };

public:
  LruCache(size_t reserve = 0)
  {
    if (reserve > 0) {
      searcher_.reserve(reserve);
    }
  }

  ~LruCache()
  {
    destroy();
  }

  void destroy()
  {
    for (ListNode *node : searcher_) {
      delete node;
    }
    searcher_.clear();

    lru_front_ = nullptr;
    lru_tail_ = nullptr;
  }

  size_t count() const
  {
    return searcher_.size();
  }

  bool get(const Key &key, Value &value) 
  {
    auto iter = searcher_.find((ListNode *)&key);
    if (iter == searcher_.end()) {
      return false;
    }

    lru_touch(*iter);
    value = (*iter)->value_;
    return true;
  }

  void put(const Key &key, const Value &value)
  {
    auto iter = searcher_.find((ListNode *)&key);
    if (iter != searcher_.end()) {
      ListNode *ln = *iter;
      ln->value_ = value;
      lru_touch(ln);
      return;
    }

    ListNode *ln = new ListNode(key, value);
    lru_push(ln);
  }

  void remove(const Key &key)
  {
    auto iter = searcher_.find((ListNode *)&key);
    if (iter != searcher_.end()) {
      lru_remove(*iter);
    }
  }

  void pop(Value *&value)
  {
    // TODO
    value = nullptr;
  }

// 从前往后遍历ListNode,执行指定的函数
  void foreach (std::function<bool(const Key &, const Value &)> func) 
  {
    for (ListNode *node = lru_front_; node != nullptr; node = node->next_) {
      bool ret = func(node->key_, node->value_);
      if (!ret) {
        break;
      }
    }
  }

// 从后往前遍历ListNode,执行指定的函数
  void foreach_reverse(std::function<bool(const Key &, const Value &)> func) // 从后往前遍历
  {
    for (ListNode *node = lru_tail_; node != nullptr; node = node->prev_) {
      bool ret = func(node->key_, node->value_);
      if (!ret) { // 如果func返回false，则停止遍历
        break;
      }
    }
  }

private:
  void lru_touch(ListNode *node) // 将节点移动到链表头部
  {
    // move node to front
    if (nullptr == node->prev_) {
      return;
    }

    node->prev_->next_ = node->next_;

    if (node->next_ != nullptr) {
      node->next_->prev_ = node->prev_;
    } else {
      lru_tail_ = node->prev_;
    }

    node->prev_ = nullptr;
    node->next_ = lru_front_;
    if (lru_front_ != nullptr) {
      lru_front_->prev_ = node;
    }
    lru_front_ = node;
  }

  void lru_push(ListNode *node) // 将节点插入到链表头部
  {
    // push front
    if (nullptr == lru_tail_) {
      lru_tail_ = node;
    }

    node->prev_ = nullptr;
    node->next_ = lru_front_;
    if (lru_front_ != nullptr) {
      lru_front_->prev_ = node;
    }

    lru_front_ = node;
    searcher_.insert(node);
  }

  void lru_remove(ListNode *node)
  {
    if (node->prev_ != nullptr) {
      node->prev_->next_ = node->next_;
    }

    if (node->next_ != nullptr) {
      node->next_->prev_ = node->prev_;
    }

    if (lru_front_ == node) {
      lru_front_ = node->next_;
    }
    if (lru_tail_ == node) {
      lru_tail_ = node->prev_;
    }

    searcher_.erase(node);
    delete node;
  }

private:
  using SearchType = std::unordered_set<ListNode *, PListNodeHasher, PListNodePredicator>;
  SearchType searcher_;
  ListNode *lru_front_ = nullptr;
  ListNode *lru_tail_ = nullptr;
};

}  // namespace common
