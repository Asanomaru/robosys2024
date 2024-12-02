#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuuki Udagawa 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

#正常な入力
out=$(echo This is a pen. | ./counter)
[ "${out}" = "13 4" ] || ng "$LINENO"

out=$(echo 20 years old | ./counter)
[ "${out}" = "12 3" ] || ng "$LINENO"


#異常な入力
out=$(echo | ./counter)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 12 | ./counter)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo あ | ./counter)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 漢字 | ./counter)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo ! | ./counter)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo "OK"

exit $res

