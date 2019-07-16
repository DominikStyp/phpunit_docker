#!/bin/bash
copyVendor=0
usage()
{
    echo "usage: docker-compose run phpunit [-c | --copy-vendor (script will copy vendor directory from container to your project] "
}

while [ "$1" != "" ]; do
    case $1 in
        -c | --copy-vendor )    shift
                                copyVendor=1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done

ls -lah /app/tests
if [[ $copyVendor -eq 1 ]]; then
    echo "Copying files from container to your ./vendor";
    cp -R /tmp/vendor/* /tmp/vendor_mapped;
fi
phpunit /app/tests