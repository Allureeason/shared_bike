# CMake generated Testfile for 
# Source directory: /home/busy/busy/shared_bike/3rd/libevent
# Build directory: /home/busy/busy/shared_bike/3rd/libevent/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test-changelist__timerfd_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-changelist")
set_tests_properties(test-changelist__timerfd_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-eof__timerfd_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-eof")
set_tests_properties(test-eof__timerfd_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-closed__timerfd_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-closed")
set_tests_properties(test-closed__timerfd_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-fdleak__timerfd_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-fdleak")
set_tests_properties(test-fdleak__timerfd_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-init__timerfd_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-init")
set_tests_properties(test-init__timerfd_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-time__timerfd_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-time")
set_tests_properties(test-time__timerfd_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-weof__timerfd_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-weof")
set_tests_properties(test-weof__timerfd_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-dumpevents__timerfd_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-dumpevents" "|" "/usr/bin/python3" "/home/busy/busy/shared_bike/3rd/libevent/test/check-dumpevents.py")
set_tests_properties(test-dumpevents__timerfd_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1267;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__timerfd_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__timerfd_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1289;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__timerfd_EPOLL_debug "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__timerfd_EPOLL_debug PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_PRECISE_TIMER=1;EVENT_DEBUG_MODE=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1295;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1311;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-changelist__changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-changelist")
set_tests_properties(test-changelist__changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-eof__changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-eof")
set_tests_properties(test-eof__changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-closed__changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-closed")
set_tests_properties(test-closed__changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-fdleak__changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-fdleak")
set_tests_properties(test-fdleak__changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-init__changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-init")
set_tests_properties(test-init__changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-time__changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-time")
set_tests_properties(test-time__changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-weof__changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-weof")
set_tests_properties(test-weof__changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-dumpevents__changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-dumpevents" "|" "/usr/bin/python3" "/home/busy/busy/shared_bike/3rd/libevent/test/check-dumpevents.py")
set_tests_properties(test-dumpevents__changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1267;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1289;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__changelist_EPOLL_debug "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__changelist_EPOLL_debug PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_DEBUG_MODE=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1295;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1314;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-changelist__timerfd_changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-changelist")
set_tests_properties(test-changelist__timerfd_changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-eof__timerfd_changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-eof")
set_tests_properties(test-eof__timerfd_changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-closed__timerfd_changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-closed")
set_tests_properties(test-closed__timerfd_changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-fdleak__timerfd_changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-fdleak")
set_tests_properties(test-fdleak__timerfd_changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-init__timerfd_changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-init")
set_tests_properties(test-init__timerfd_changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-time__timerfd_changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-time")
set_tests_properties(test-time__timerfd_changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-weof__timerfd_changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-weof")
set_tests_properties(test-weof__timerfd_changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-dumpevents__timerfd_changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-dumpevents" "|" "/usr/bin/python3" "/home/busy/busy/shared_bike/3rd/libevent/test/check-dumpevents.py")
set_tests_properties(test-dumpevents__timerfd_changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1267;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__timerfd_changelist_EPOLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__timerfd_changelist_EPOLL PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1289;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__timerfd_changelist_EPOLL_debug "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__timerfd_changelist_EPOLL_debug PROPERTIES  ENVIRONMENT "EVENT_NOSELECT=1;EVENT_NOPOLL=1;EVENT_EPOLL_USE_CHANGELIST=yes;EVENT_PRECISE_TIMER=1;EVENT_DEBUG_MODE=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1295;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1317;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-changelist__SELECT "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-changelist")
set_tests_properties(test-changelist__SELECT PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-eof__SELECT "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-eof")
set_tests_properties(test-eof__SELECT PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-closed__SELECT "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-closed")
set_tests_properties(test-closed__SELECT PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-fdleak__SELECT "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-fdleak")
set_tests_properties(test-fdleak__SELECT PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-init__SELECT "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-init")
set_tests_properties(test-init__SELECT PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-time__SELECT "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-time")
set_tests_properties(test-time__SELECT PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-weof__SELECT "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-weof")
set_tests_properties(test-weof__SELECT PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-dumpevents__SELECT "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-dumpevents" "|" "/usr/bin/python3" "/home/busy/busy/shared_bike/3rd/libevent/test/check-dumpevents.py")
set_tests_properties(test-dumpevents__SELECT PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1267;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__SELECT "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__SELECT PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1289;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__SELECT_debug "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__SELECT_debug PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOPOLL=1;EVENT_DEBUG_MODE=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1295;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-changelist__POLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-changelist")
set_tests_properties(test-changelist__POLL PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-eof__POLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-eof")
set_tests_properties(test-eof__POLL PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-closed__POLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-closed")
set_tests_properties(test-closed__POLL PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-fdleak__POLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-fdleak")
set_tests_properties(test-fdleak__POLL PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-init__POLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-init")
set_tests_properties(test-init__POLL PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-time__POLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-time")
set_tests_properties(test-time__POLL PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-weof__POLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-weof")
set_tests_properties(test-weof__POLL PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1254;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-dumpevents__POLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-dumpevents" "|" "/usr/bin/python3" "/home/busy/busy/shared_bike/3rd/libevent/test/check-dumpevents.py")
set_tests_properties(test-dumpevents__POLL PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1267;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__POLL "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__POLL PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1289;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(regress__POLL_debug "/home/busy/busy/shared_bike/3rd/libevent/build/bin/regress" "--quiet")
set_tests_properties(regress__POLL_debug PROPERTIES  ENVIRONMENT "EVENT_NOEPOLL=1;EVENT_NOSELECT=1;EVENT_DEBUG_MODE=1" _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1295;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1320;add_backend_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-ratelim__group_lim "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-ratelim" "-g" "30000" "-n" "30" "-t" "100" "--check-grouplimit" "1000" "--check-stddev" "100")
set_tests_properties(test-ratelim__group_lim PROPERTIES  _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1331;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-ratelim__con_lim "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-ratelim" "-c" "1000" "-n" "30" "-t" "100" "--check-connlimit" "50" "--check-stddev" "50")
set_tests_properties(test-ratelim__con_lim PROPERTIES  _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1340;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-ratelim__group_con_lim "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-ratelim" "-c" "1000" "-g" "30000" "-n" "30" "-t" "100" "--check-grouplimit" "1000" "--check-connlimit" "50" "--check-stddev" "50")
set_tests_properties(test-ratelim__group_con_lim PROPERTIES  _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1349;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
add_test(test-ratelim__group_con_lim_drain "/home/busy/busy/shared_bike/3rd/libevent/build/bin/test-ratelim" "-c" "1000" "-g" "35000" "-n" "30" "-t" "100" "-G" "500" "--check-grouplimit" "1000" "--check-connlimit" "50" "--check-stddev" "50")
set_tests_properties(test-ratelim__group_con_lim_drain PROPERTIES  _BACKTRACE_TRIPLES "/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;1360;add_test;/home/busy/busy/shared_bike/3rd/libevent/CMakeLists.txt;0;")
