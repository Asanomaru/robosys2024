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

## 実行例と結果
1. コマンド:
   ```
   echo This is a pen. | ./counter
   ```
   実行結果:
   ```
   13 4
   ```
2. コマンド:
   ```
   echo Apple Apple | ./counter
   ```
   実行結果:
   ```
   11 2
   ```

## 出力結果の説明
- 最初の数字: 入力された文字の文字数
- 次の数字: 入力された文字の単語数

## ライセンス
- このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます.
- © 2024 Yuuki Udagawa
