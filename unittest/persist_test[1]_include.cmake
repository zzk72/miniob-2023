if(EXISTS "/home/zzk/MyData/miniob-2023/unittest/persist_test[1]_tests.cmake")
  include("/home/zzk/MyData/miniob-2023/unittest/persist_test[1]_tests.cmake")
else()
  add_test(persist_test_NOT_BUILT persist_test_NOT_BUILT)
endif()