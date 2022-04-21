#!/bin/bash

ps -ef | grep airline.war | grep -v grep | awk '{print $2}' | xargs kill
