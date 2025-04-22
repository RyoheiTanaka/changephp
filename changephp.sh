#!/bin/bash

# PHP version e.g. 8.2, 8.3, 8.4
VERSION=$1

if [ -z "$VERSION" ]; then
  echo "❗ Usage: $0 <php-version> (e.g. 8.2, 8.3, 8.4)"
  exit 1
fi

BREW_PREFIX=$(brew --prefix)
PHP_FORMULA="php@$VERSION"
PHP_BIN="$BREW_PREFIX/opt/$PHP_FORMULA/bin/php"

if [ ! -x "$PHP_BIN" ]; then
  echo "❌ PHP version $VERSION is not installed via Homebrew."
  echo "👉 Try: brew install $PHP_FORMULA"
  exit 1
fi

echo "🔄 Switching to PHP $VERSION..."

# Unlink any currently linked PHP versions
brew unlink php &>/dev/null
brew unlink php@* &>/dev/null

# Link the requested version
brew link --overwrite --force $PHP_FORMULA

echo "✅ Switched to PHP $VERSION"
php -v
