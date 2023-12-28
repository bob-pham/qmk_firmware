#!/bin/bash

layout="default"

if [ "$#" -eq 1 ]; then
    layout="$1"
fi

echo 'PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bashrc && source $HOME/.bashrc

qmk compile -kb crkbd -km $layout -e CONVERT_TO=promicro_rp2040
