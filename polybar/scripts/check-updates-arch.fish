#! /usr/bin/fish

set updates_arch (checkupdates | wc -l)
echo $updates_arch
