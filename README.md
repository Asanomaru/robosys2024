# robosys2024
ロボットシステム学授業用

# counterコマンド
[![test](https://github.com/Asanomaru/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/Asanomaru/robosys2024/actions/workflows/test.yml)

## 概要

このプロジェクトは,入力された文字を解析し以下の機能があります

　- 文字数のカウント
  - 単語数のカウント
  - 入力された単語のリスト表示 

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.11

## テスト環境
- Ubuntu 20.04

© 2024 Yuuki Udagawa

## 使用方法

手順
1. プロジェクトをローカル環境にクローンします
```
git clone https://github.com/Asanomaru/robosys2024.git
```

2. リポジトリのディレクトリに移動します
```
cd robosys2024
```

3. 実行権限を付与します
```
chmod +x counter
```

実行例
コマンドを実行し、文字を入力します
```
echo This is a pen. | ./counter
```

- 実行結果の例
入力された文字数は14文字、単語数は4単語です
使われた単語
1語目：This
2語目：is
3語目：a
4語目：pen.

## ライセンス
   - このソフトウェアパッケージは, 3条項BADライセンスの下, 再頒布および使用が許可されます.
   - © 2024 Yuuki Udagawa
