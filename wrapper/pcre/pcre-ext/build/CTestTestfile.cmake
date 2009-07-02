# CMake generated Testfile for 
# Source directory: C:/ebook-conv/wrapper/pcre/pcre
# Build directory: C:/ebook-conv/wrapper/pcre/pcre-ext/build
# 
# This file replicates the SUBDIRS() and ADD_TEST() commands from the source
# tree CMakeLists.txt file, skipping any SUBDIRS() or ADD_TEST() commands
# that are excluded by CMake control structures, i.e. IF() commands.
ADD_TEST(pcre_test "cmd" "/C" "C:/ebook-conv/wrapper/pcre/pcre/RunTest.bat")
ADD_TEST(pcrecpp_test "C:/ebook-conv/wrapper/pcre/pcre-ext/build/DEBUG/pcrecpp_unittest.exe")
ADD_TEST(pcre_scanner_test "C:/ebook-conv/wrapper/pcre/pcre-ext/build/DEBUG/pcre_scanner_unittest.exe")
ADD_TEST(pcre_stringpiece_test "C:/ebook-conv/wrapper/pcre/pcre-ext/build/DEBUG/pcre_stringpiece_unittest.exe")
