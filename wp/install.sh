#!/bin/sh
#
# WP-CLI installation

echo "› installers:wp-cli"

if test ! $(which wp)
then
  echo "  Installing WP-CLI for you."
  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  php wp-cli.phar --info
  # Make it global
  chmod +x wp-cli.phar
  sudo mv wp-cli.phar /usr/local/bin/wp
fi

echo "  Already installed…"
exit 0
