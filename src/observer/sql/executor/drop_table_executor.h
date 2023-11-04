#pragma once

#include "common/rc.h"

class SQLStageEvent;

/**
 * @brief 删除表的执行器
 * @ingroup Executor
 */
// class CreateTableExecutor
// {
// public:
//   CreateTableExecutor() = default;
//   virtual ~CreateTableExecutor() = default;

//   RC execute(SQLStageEvent *sql_event);
// };

class DropTableExecutor
{
public:
  DropTableExecutor() = default;
  virtual ~DropTableExecutor() = default;

  RC execute(SQLStageEvent *sql_event);
};