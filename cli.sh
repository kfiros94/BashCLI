#!/usr/bin/env bash
#output looks like this:
#
#➜  hello-world git:(master) ✗ ./hello-world.sh --count 5 --phrase "hello world"   
#hello world
#hello world
#hello world
#hello world
#hello world

#Generate phrase "N" times - THE WORK
phrase_generator() {

    for ((i=0; i<$1;i++)); do
        echo "$2"
    done
}

#Parse Options - PARSING

while [ $# -gt 1 ]
do
key="$1"

case $key in
    -c|--count)
    COUNT="$2"
    shift  # Shifts all parameters by one: the argument that used to be $2 becomes $1, $3 becomes $2
    ;;
    -p|--phrase)
    PHRASE="$2"
    shift
    ;;
esac
shift # to move another left to make sure there are no parameters left and exit the loop
done

# RUN
phrase_generator "${COUNT}" "${PHRASE}"