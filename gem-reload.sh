#!/usr/bin/env sh
rm srcpkg-0.*
echo
gem build srcpkg.gemspec
echo
gem install srcpkg-0.1.0.gem