#!/bin/bash

# PHP version e.g. 8.1, 8.2, 8.3, 8.4
VERSION=$1

if [ -z "$VERSION" ]; then
  echo "❗ Usage: $0 <php-version> (e.g. 8.1, 8.2, 8.3, 8.4)"
  exit 1
fi

BREW_PREFIX=$(brew --prefix)

if [ "$VERSION" = "8.4" ]; then
  PHP_FORMULA="php"
else
  PHP_FORMULA="php@$VERSION"
fi

PHP_BIN="$BREW_PREFIX/opt/$PHP_FORMULA/bin/php"

if [ ! -x "$PHP_BIN" ]; then
  echo "❌ PHP version $VERSION is not installed via Homebrew."
  echo "👉 Try: brew install $PHP_FORMULA"
  exit 1
fi

echo "🔄 Switching to PHP $VERSION..."

# Unlink all known PHP versions
for v in 8.1 8.2 8.3; do
  brew unlink php@$v &>/dev/null
done
brew unlink php &>/dev/null


# Link the requested version
brew link --overwrite --force $PHP_FORMULA

echo "✅ Switched to PHP $VERSION"
php -v
