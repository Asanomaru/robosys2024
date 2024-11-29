#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuuki Udagawa
#SPDX-FileCopyrightText: 2024 Yuuki Udagawa

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0


out=$(echo This is a pen. | ./counter)
[ "${out}" = "入力された文字数は14文字、単語数は4単語です
使われた単語
1語目：This
2語目：is
3語目：a
4語目：pen." ] || ng "$LINENO"


out=$(echo あ | ./counter)
[ "${out}" = "入力された文字数は1文字、単語数は1単語です
使われた単語
1語目：あ" ] || ng "$LINENO"

out=$(echo | ./counter)
[ "${out}" = "入力なし" ] || ng "$LINENO"



[ "$res" = 0 ] && echo "OK"

exit $res

