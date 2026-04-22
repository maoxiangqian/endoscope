script_folder="/Users/maoxiangqian/endoscope/build/Release/generators"
echo "echo Restoring environment" > "$script_folder/deactivate_conanbuildenv-release-armv8.sh"
for v in STRIP NM RANLIB AR QT_PLUGIN_PATH QT_HOST_PATH ACLOCAL_PATH AUTOMAKE_CONAN_INCLUDES AUTOCONF AUTORECONF AUTOHEADER AUTOM4TE M4
do
   is_defined="true"
   value=$(printenv $v) || is_defined="" || true
   if [ -n "$value" ] || [ -n "$is_defined" ]
   then
       echo export "$v='$value'" >> "$script_folder/deactivate_conanbuildenv-release-armv8.sh"
   else
       echo unset $v >> "$script_folder/deactivate_conanbuildenv-release-armv8.sh"
   fi
done

export STRIP="/usr/bin/strip"
export NM="/usr/bin/nm"
export RANLIB="/usr/bin/ranlib"
export AR="/usr/bin/ar"
export QT_PLUGIN_PATH="/Users/maoxiangqian/.conan2/p/b/qtb4435a2087310/p/plugins"
export QT_HOST_PATH="/Users/maoxiangqian/.conan2/p/b/qtb4435a2087310/p"
export ACLOCAL_PATH="${ACLOCAL_PATH:-}${ACLOCAL_PATH:+:}/Users/maoxiangqian/.conan2/p/b/libto65877dcd07b57/p/res/aclocal"
export AUTOMAKE_CONAN_INCLUDES="${AUTOMAKE_CONAN_INCLUDES:-}${AUTOMAKE_CONAN_INCLUDES:+:}/Users/maoxiangqian/.conan2/p/b/libto65877dcd07b57/p/res/aclocal"
export AUTOCONF="/Users/maoxiangqian/.conan2/p/autoc321298d49d384/p/bin/autoconf"
export AUTORECONF="/Users/maoxiangqian/.conan2/p/autoc321298d49d384/p/bin/autoreconf"
export AUTOHEADER="/Users/maoxiangqian/.conan2/p/autoc321298d49d384/p/bin/autoheader"
export AUTOM4TE="/Users/maoxiangqian/.conan2/p/autoc321298d49d384/p/bin/autom4te"
export M4="/Users/maoxiangqian/.conan2/p/m41ab05390709b3/p/bin/m4"