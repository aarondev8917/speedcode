- Placing files above htdocs and serving it from within htdocs
- For preg functions place delimiters before the string


Notices and warnings
----------------------
1. notices and warnings will not halt the execution of your script (http://stackoverflow.com/questions/4624474/php-difference-between-notice-and-warning)
2. to halt execution of script on error warning
   - set custom handler (custom error handler) and throw exception on notice or warning
e.g: fired affiliate crons on supprt server, but got notices and warnings, but script continues to run in background.
3. check script timeout in the php.ini configurations
 