#!/bin/sh
echo "$1" > /.aws/config
echo "$2" > /.aws/credentials
/usr/bin/virtuoso-t
/bin/bash
