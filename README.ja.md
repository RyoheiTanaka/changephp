# changephp（日本語）

Homebrewでインストールした複数のPHPバージョンを、macOS上で簡単に切り替えるためのシンプルなCLIスクリプトです。

---

## 🔧 これは何？

`changephp` は、Homebrewでインストールした複数のPHPバージョン（例：8.1, 8.2, 8.4）を、シンボリックリンクの切り替えで簡単に操作できるスクリプトです。

`phpenv` を使わずにシステムのPHPバージョンを素早く切り替えたい人におすすめです。

---

## ✅ 必要なもの

- macOS（Homebrewがインストールされていること）
- HomebrewでPHPをインストール済みであること：
  ```bash
  brew install php@8.2
  brew install php@8.4
  ```

---

## 🚀 インストール手順

1. このリポジトリをクローン：
   ```bash
   git clone https://github.com/RyoheiTanaka/changephp.git
   cd changephp
   ```

2. スクリプトに実行権限を付与：
   ```bash
   chmod +x changephp.sh
   ```

3. （任意）zsh で使いやすくするためエイリアスを追加：
   ```bash
   echo 'alias changephp="~/changephp/changephp.sh"' >> ~/.zshrc
   source ~/.zshrc
   ```

---

## 💡 使い方

```bash
changephp 8.4
```

これにより：
- 現在リンクされているPHPバージョンをアンリンク
- 指定したPHPバージョンをリンク
- 実行中のバージョンを確認表示

---

## 🧠 補足

- このスクリプトはPHPのインストールは行いません。
  事前に以下のようにHomebrewでインストールしてください：
  ```bash
  brew install php@8.4
  ```

- `.zshrc` に `export PATH="/usr/local/opt/php/bin:$PATH"` のような固定パスがあると干渉するため、コメントアウトするのがおすすめです。

- Laravel・Composer・Zenn CLIなどの開発環境と組み合わせて快適に使えます。

---

## 📄 ライセンス

MITライセンス

