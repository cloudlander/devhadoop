diff --git a/Makefile.vars b/Makefile.vars
index d82d74c6ff..d72c025991 100644
--- a/Makefile.vars
+++ b/Makefile.vars
@@ -59,7 +59,7 @@ else
   $(error "$(VER_ERR_MSG)")
 endif
 
-PYTHON_H ?= $(shell ls /usr/include/$(PYTHON_VER)/Python.h 2>/dev/null || ls /usr/local/include/$(PYTHON_VER)/Python.h 2>/dev/null || find /usr/local/$(PYTHON_EXE)/include/$(PYTHON_VER)* -name Python.h 2>/dev/null || find /opt/rh/rh-$(PYTHON_EXE)/root/usr/include/$(PYTHON_VER)* -name Python.h 2>/dev/null || find /Library/Frameworks/Python.framework/Versions/*/include/$(PYTHON_VER)* -name Python.h 2>/dev/null)
+PYTHON_H ?= $(shell ls /usr/include/$(PYTHON_VER)/Python.h 2>/dev/null || ls /usr/local/include/$(PYTHON_VER)/Python.h 2>/dev/null || find /usr/local/$(PYTHON_EXE)/include/$(PYTHON_VER)* -name Python.h 2>/dev/null || find /opt/rh/rh-$(PYTHON_EXE)/root/usr/include/$(PYTHON_VER)* -name Python.h 2>/dev/null || find /System/Library/Frameworks/Python.framework/Versions/*/include/$(PYTHON_VER)* -name Python.h 2>/dev/null)
 ifndef SKIP_PYTHONDEV_CHECK
   ifeq ($(PYTHON_H),)
     $(error "Error: must have python development packages for $(PYTHON_VER). Could not find Python.h. Please install $(PYTHON_VER)-devel")
diff --git a/desktop/core/ext-py/python-ldap-2.3.13/setup.cfg b/desktop/core/ext-py/python-ldap-2.3.13/setup.cfg
index cf765ab91b..d3e62c5915 100644
--- a/desktop/core/ext-py/python-ldap-2.3.13/setup.cfg
+++ b/desktop/core/ext-py/python-ldap-2.3.13/setup.cfg
@@ -3,7 +3,7 @@ extra_objects =
 extra_compile_args = 
 libs = ldap_r lber sasl2 ssl crypto
 library_dirs = /usr/local/openldap-2.3/lib
-include_dirs = /usr/local/openldap-2.3/include /usr/include/sasl
+include_dirs = /usr/local/openldap-2.3/include /Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/include/sasl
 
 [egg_info]
 tag_build = 

 make apps
