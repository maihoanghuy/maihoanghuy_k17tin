#!/bin/bash
#Dem so dong, so tu va ky tu trong file abc.doc
set `wc -w -l -c abc.doc`
echo "File abc co $1 dong, $2 tu va gom $3 ky tu"
