#!/bin/bash

# converts / builds .dot to .png

for FILE in * ; do
    # be intelligent: only convert if it actually IS a .dot file :P
    if [[ "$FILE" == *.dot ]] ; then
        # all .dot will be written to same name .png files
        `dot -Tpng "$FILE" > "${FILE%dot}png"`;
    fi
done
