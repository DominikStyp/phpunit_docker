# Docker PHPUnit 8 + PHP 7.4 Build
Docker container with newest **PHPUnit 8 + PHP 7.4** with mapped folders for tests + initial script
# Usage
All you need to do is to put up your **PHP** tests into the *./tests* directory<br />
And run following commands: <br />
1. `docker-compose up --build -d`  (build up an image)
2. `docker run phpunit`   (run the tests) <br /><br />
In case you don't have your docker machine started you must start it `docker-machine start <machine_name>`
# Additional options
1. `docker run phpunit -c` - script will ONLY copy vendor directory from container to your project
2. `docker run phpunit -h` - help
# Initial Script
There is initial script inside **./php7-testing-phpunit/initialScript.sh** <br /> 
where you can put your own commands that will be invoked, when container is starting to run.<br />
# Windows 7 Warning!
In case you use Windows 7. You must be sure you are using [Docker Toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/), <br />
you followed all the instructions there, and you have your project under your user home directory, otherwise volume mapping won't work, <br />
unless you've added additional shared directories to your VirtualBox Docker Machine.
