http://codeception.com/for/laravel

1. install
2. setup


codecept: command not found
http://www.litphp.info/codecept_command_not_found


For local development I'm using Vagrant, here is example for it:
export PATH=$PATH:/home/vagrant/.composer/vendor/bin

1. sudo composer global require "codeception/codeception=2.1.*" "codeception/specify=*" "codeception/verify=*"
2. sudo ln -s ~/.composer/vendor/bin/codecept    /usr/local/bin/codecept