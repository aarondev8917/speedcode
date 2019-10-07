Laravel
- Validations
- Filesystems
    Laravel Flysystem integration
    config - config/filesystems.php
    disks

architecture foundations
- read on facade, service container

Storage snippet.
 localproject/config/filsystems.php
    - disks - csv

 controller snippet
 Storage::disk('csv')->put($csv_file, $csv);
 $content = Storage::disk('csv')->get($csv_file);




-Mail
   SwiftMailer library

-Queues
 config/queues.php
    - connections
       \\Learn Traits



-Logging
    - Monolog library


- IF public folder is renames, it has to be changed in elixir because it has the public path hardcoded
- LAravel 5.1 has not HTML class



INSTALL
- Install composer 
composer create-project laravel/laravel <name of project> "5.1.*"