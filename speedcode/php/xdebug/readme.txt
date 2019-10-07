1. check if xdebug module loaded through phpinfo()
2.The Following configs to be placed in php.ini 
[XDebug]
; Only Zend OR (!) XDebug
zend_extension = "C:/xampp/php/ext/php_xdebug.dll"
; XAMPP and XAMPP Lite 1.7.0 and later come with a bundled xdebug at <XAMPP_HOME>/php/ext/php_xdebug.dll, without a version number.
xdebug.remote_enable=1
xdebug.remote_autostart=on
xdebug.remote_host=172.16.173.245
xdebug.remote_autostart=1
xdebug.remote_port=9000
xdebug.idekey="netbeans-xdebug"
; Port number must match debugger port number in NetBeans IDE Tools > Options > PHP
xdebug.remote_handler="dbgp"
xdebug.profiler_enable=1
xdebug.profiler_output_dir="C:/xampp/tmp"
xdebug.max_nesting_level = 1000   (needed for this error: http://stackoverflow.com/questions/8656089/solution-for-fatal-error-maximum-function-nesting-level-of-100-reached-abor)


(Check remote_host)
4. Check the project URL in netbeans, so that open the URL of the APP. Very helpful in Debugging Project. (nbproject -> private: for existing project)
5. RESTART NETBEANS
6. RESTART APACHE after changes to php.ini file



------------------------------------------------------------------------------------------------------------------
https://gist.github.com/joseluisq/d7586c9e5bd52012e0cf
https://gist.github.com/josephx86/85c1413b25ee257e0543032aadfec7fc/revisions
yum install php-pecl-xdebug.x86_64
vim /etc/php.ini
zend_extension="/usr/lib64/php/modules/xdebug.so"
xdebug.remote_enable = 1
xdebug.remote_host=172.16.173.245


troubleshoot
------------
php53-common conflicts with php-common
1. yum remove php53-common
   This uninstalls a few pacakages (maybe php.ini)
2. yum install php-common
