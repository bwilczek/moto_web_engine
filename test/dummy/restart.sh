#!/bin/bash

kill `cat tmp/pids/server.pid`
bundle exec rails s -b 0.0.0.0 -d

