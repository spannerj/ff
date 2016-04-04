#!/usr/bin/env bash

echo "Intall bundler"
bundle install

echo "Database migrations..."
cd lrfantasy
rake db:migrate