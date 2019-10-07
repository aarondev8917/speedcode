https://www.phpdoc.org/
Installed by xampp CLI

pear channel-discover pear.phpdoc.org
pear install phpdoc/phpDocumentor


ERROR: unable to unpack C:\Users\AARONL~1.EIG\AppData\Local\Temp\pear\download\phpDocumentor-2.8.5.tgz
(bug associated with the package)

http://stackoverflow.com/questions/30358699/windows-phpdocs-unable-to-install-through-pear
pear install --nocompress phpdoc/phpDocumentor

pear install phpdoc/phpDocumentor-2.8.1s


 C:\xampp\htdocs\monitron\crons> phpdoc -d . -t docs