#!/bin/bash
#SPDX-FileCopyrightText: 2024 Yuuki Udagawa

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0


out=$(echo This is a pen. | ./counter)
[ "${out}" = "入力された文字数と単語数は14文字と4単語です" ] || ng "$LINENO"


out=$(echo あ | ./counter)
[ "${out}" = "入力された文字数と単語数は1文字と1単語です" ] || ng "$LINENO"

out=$(echo 1 | ./counter)
[ "${out}" = "入力された文字数と単語数は1文字と1単語です" ] || ng "$LINENO"

out=$(echo ! | ./counter)
[ "${out}" = "入力された文字数と単語数は1文字と1単語です" ] || ng "$LINENO"

out=$(echo | ./counter)
[ "${out}" = "入力なし" ] || ng "$LINENO"



[ "$res" = 0 ] && echo "OK"

exit $res

