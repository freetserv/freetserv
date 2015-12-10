#!/bin/sh
# vim:ts=2:sw=2:et

echo 4 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio4/direction
echo 1 > /sys/class/gpio/gpio4/value
while :
do
  sleep 1
  echo 0 > /sys/class/gpio/gpio4/value
  sleep 1
  echo 1 > /sys/class/gpio/gpio4/value
done
