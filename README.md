# changephp

Simple CLI tool to switch between multiple PHP versions installed via Homebrew on macOS.

---

## 🌐 Other Languages

- 🇯🇵 [日本語 READMEはこちら](./README.ja.md)

---

## 🔧 What is this?

`changephp` is a small shell script that makes it easy to switch between different PHP versions (e.g. 8.1, 8.2, 8.4) installed using Homebrew.

If you're managing multiple projects with different PHP requirements, this tool helps you quickly switch the active version without using `phpenv` or Docker.

---

## ✅ Requirements

- macOS with Homebrew installed
- PHP versions installed via Homebrew:
  ```bash
  brew install php@8.2
  brew install php@8.4
  ```

---

## 🚀 Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/RyoheiTanaka/changephp.git
   cd changephp
   ```

2. Make the script executable:
   ```bash
   chmod +x changephp.sh
   ```

3. (Optional) Add an alias to your shell config:
   ```bash
   echo 'alias changephp="~/changephp/changephp.sh"' >> ~/.zshrc
   source ~/.zshrc
   ```

---

## 💡 Usage

```bash
changephp 8.4
```

This will:
- Unlink any currently linked PHP formula (e.g. php@8.2)
- Link the specified PHP version using Homebrew
- Print the active PHP version for confirmation

---

## 🧠 Notes

- This script does not install PHP versions. You must install them with Homebrew beforehand:
  ```bash
  brew install php@8.4
  ```

- Make sure `/usr/local/bin` is in your `$PATH`, and remove any fixed `php` paths like `/usr/local/opt/php/bin` from your `.zshrc` if present.

- Works well with Laravel, Composer, and local development environments.

---

## 📄 License

MIT License
