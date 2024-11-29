#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuuki Udagawa
#SPDX-FileCopyrightText: 2024 Yuuki Udagawa

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

#正常な入力
out=$(echo This is a pen. | ./counter)
[ "${out}" = "入力された文字数は14文字、単語数は4単語です
使われた単語
1語目：This
2語目：is
3語目：a
4語目：pen." ] || ng "$LINENO"

out=$(echo 20 years old | ./counter)
[ "${out}" = "入力された文字数は12文字、単語数は3単語です
使われた単語
1語目：20
2語目：years
3語目：old" ] || ng "$LINENO"

out=$(echo | ./counter)
[ "${out}" = "入力なし" ] || ng "$LINENO"

#異常な入力
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

