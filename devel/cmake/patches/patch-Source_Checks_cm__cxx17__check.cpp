--- Source/Checks/cm_cxx17_check.cpp.orig	2019-02-01 14:35:27.000000000 +0100
+++ Source/Checks/cm_cxx17_check.cpp	2019-02-27 15:33:42.369529525 +0100
@@ -1,9 +1,22 @@
 #include <cstdio>
+#include <cassert>
+#include <iterator>
 #include <memory>
 #include <unordered_map>
+#include <type_traits>
 
 int main()
 {
+  int a[] = { 0, 1, 2 };
+  auto ai = std::cbegin(a);
+
+  int b[] = { 2, 1, 0 };
+  auto bi = std::cend(b);
+
+  auto ci = std::size(a);
+
   std::unique_ptr<int> u(new int(0));
-  return *u;
+  
+  return *u + *ai + *(bi - 1) + (3 - static_cast<int>(ci));
 }
+
