#!/bin/bash -e

BASEDIR=`dirname $0`/..

if [ ! -d "$BASEDIR/env" ]; then
    virtualenv -p python3 -q $BASEDIR/env --prompt='(redpush) '
    echo "Virtualenv created."

    source $BASEDIR/env/bin/activate
    echo "Virtualenv activated."

    pip install -r $BASEDIR/requirements.txt
    # pip install -e $BASEDIR
    echo "Requirements installed."
elif [ -f "$BASEDIR/env/bin/activate" ]; then
    source $BASEDIR/env/bin/activate
    echo "Virtualenv activated."

    pip install -r $BASEDIR/requirements.txt
    # pip install -e $BASEDIR
    echo "Requirements installed."
fi
