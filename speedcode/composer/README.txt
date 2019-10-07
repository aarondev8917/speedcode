Install Composer ubuntu

 curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer



--------------------------------------------------------------------------------------------------------------------------------------------------------------------

composer require phpunit/phpunit


Installation failed, reverting ./composer.json to its original content.
The following exception is caused by a lack of memory and not having swap configured
Check https://getcomposer.org/doc/articles/troubleshooting.md#proc-open-fork-failed-errors for details


Answer:
This could be happening because the VPS runs out of memory and has no Swap space enabled.

Run the following commands:
1. free -m
2. sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
3. sudo /sbin/mkswap /var/swap.1
4. sudo /sbin/swapon /var/swap.1



After doing the above, run the foll:
composer require phpunit/phpunit

---------------------------------------------------------------------------------------------------------------------------------------------------------------



Composer Commands
1. composer update
2. composer dump-autoload




-----------------------------------------------------------------------------------

To update composer:
 php C:/ProgramData/ComposerSetup/bin/composer.phar self-update 