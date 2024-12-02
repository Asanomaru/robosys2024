# robosys2024
ロボットシステム学授業用

# counterコマンド
[![test](https://github.com/Asanomaru/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/Asanomaru/robosys2024/actions/workflows/test.yml)

## 概要

- このプロジェクトは入力された文字から文字数と単語数をカウントするものです
- 文字の基本的な情報(文字数と単語数)を手軽に調べたい時に役立ちます
- 主な機能は文字数のカウント、単語数のカウント、入力された単語のリスト表示です

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.11

## テスト環境
- Ubuntu 22.04 LTS

## 使用方法

```
git clone https://github.com/Asanomaru/robosys2024.git
cd robosys2024
chmod +x counter
```

- 実行例
コマンドを実行し、文字を入力します
```
echo This is a pen. | ./counter
```

- 実行結果の例
```
入力された文字数は14文字、単語数は4単語です
使われた単語
1語目：This
2語目：is
3語目：a
4語目：pen.
```

## ライセンス
   - このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます.
   - © 2024 Yuuki Udagawa
