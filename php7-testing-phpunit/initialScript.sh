#!/bin/bash
ls -lah /app/tests
cp -R /tmp/vendor/* /tmp/vendor_mapped
phpunit /app/tests