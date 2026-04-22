script_folder="/Users/maoxiangqian/endoscope/build/Release/generators"
echo "echo Restoring environment" > "$script_folder/deactivate_conanrunenv-release-armv8.sh"
for v in QT_PLUGIN_PATH PostgreSQL_ROOT OPENSSL_MODULES ACLOCAL_PATH AUTOMAKE_CONAN_INCLUDES PATH M4
do
   is_defined="true"
   value=$(printenv $v) || is_defined="" || true
   if [ -n "$value" ] || [ -n "$is_defined" ]
   then
       echo export "$v='$value'" >> "$script_folder/deactivate_conanrunenv-release-armv8.sh"
   else
       echo unset $v >> "$script_folder/deactivate_conanrunenv-release-armv8.sh"
   fi
done

export QT_PLUGIN_PATH="/Users/maoxiangqian/.conan2/p/b/qtb4435a2087310/p/plugins"
export PostgreSQL_ROOT="/Users/maoxiangqian/.conan2/p/b/libpq93f043198fe90/p"
export OPENSSL_MODULES="/Users/maoxiangqian/.conan2/p/opensf16b602a2157d/p/lib/ossl-modules"
export ACLOCAL_PATH="${ACLOCAL_PATH:-}${ACLOCAL_PATH:+:}/Users/maoxiangqian/.conan2/p/b/libto65877dcd07b57/p/res/aclocal"
export AUTOMAKE_CONAN_INCLUDES="${AUTOMAKE_CONAN_INCLUDES:-}${AUTOMAKE_CONAN_INCLUDES:+:}/Users/maoxiangqian/.conan2/p/b/libto65877dcd07b57/p/res/aclocal"
export PATH="/Users/maoxiangqian/.conan2/p/automc647ac30ac192/p/bin:/Users/maoxiangqian/.conan2/p/autoc321298d49d384/p/bin:/Users/maoxiangqian/.conan2/p/m41ab05390709b3/p/bin${PATH:+:$PATH}"
export M4="/Users/maoxiangqian/.conan2/p/m41ab05390709b3/p/bin/m4"