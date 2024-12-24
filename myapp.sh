#!/bin/bash
~/Programs/MyApp/MyApp.AppImage --no-sandbox  > /dev/null 2>> $(dirname "$0")/myapp-errors.log