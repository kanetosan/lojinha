#!/usr/bin/env sh

git pull
play clean compile stage
sudo env PATH=$PATH play stop
sudo -b env PATH=$PATH ./target/start -DapplyEvolutions.default=true
