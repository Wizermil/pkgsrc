--- Source/Checks/cm_cxx14_check.cpp.orig	2019-02-01 14:35:27.000000000 +0100
+++ Source/Checks/cm_cxx14_check.cpp	2019-02-27 16:09:42.111139195 +0100
@@ -1,8 +1,17 @@
 #include <cstdio>
+#include <iterator>
 #include <memory>
 
 int main()
 {
+  int a[] = { 0, 1, 2 };
+  auto ai = std::cbegin(a);
+
+  int b[] = { 2, 1, 0 };
+  auto bi = std::cend(b);
+
+
   std::unique_ptr<int> u(new int(0));
-  return *u;
+  return *u + *ai + *(bi - 1);
 }
+
