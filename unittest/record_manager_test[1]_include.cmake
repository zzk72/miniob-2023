if(EXISTS "/home/zzk/MyData/miniob-2023/unittest/record_manager_test[1]_tests.cmake")
  include("/home/zzk/MyData/miniob-2023/unittest/record_manager_test[1]_tests.cmake")
else()
  add_test(record_manager_test_NOT_BUILT record_manager_test_NOT_BUILT)
endif()