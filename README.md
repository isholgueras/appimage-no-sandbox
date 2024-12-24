# AppImage No Sandbox helper

This repository provides a simple way to execute problematic AppImages on modern Linux distributions, especially those that require the --no-sandbox flag for execution. It includes helpful files to streamline the process of running, logging errors, and setting up a desktop shortcut.

**Note**: While the `--no-sandbox` flag is necessary for some AppImages, **it reduces security**. Only use this method with trusted applications and at your own risk!.

## Features

- `appimage.sh`: a script to run the AppImage with the `--no-sandbox`. It also redirects logs but stores errors.
- `appimage.desktop`: A desktop enty file for easy access via the system menu or desktop.
- `logo.svg`: A logo to replace by your application's logo. Preferrably svg.

It also will manage the AppImage autoupdate.

## Installation

There is no such `git clone` or whatever. I personally like to have all AppImages files under `~/Programs`. Let's assume this is the path and the app is `MyApp.AppImage`. Use your own application.

1. Download the `MyApp.AppImage` under `~/Programs/MyApp`.
1. Copy the content of `appimage.sh` to `~/Programs/MyApp/myapp.sh` and edit to your own needs.
1. Make it executable `chmod +x ~/Programs/MyApp/myapp.sh`.
1. Optional. Link it `ln -s ~/Programs/MyApp/myapp.sh /usr/local/bin/myapp`.
1. Copy the content of `appimage.desktop` to `~/Programs/MyApp/myapp.desktop` and edit it to your own needs.
1. Make it executable `chmod +x ~/Programs/MyApp/myapp.desktop`.
1. Make it discoverable `ln -s ~/Programs/MyApp/myapp.desktop ~/.local/share/applications/myapp.desktop`.
1. Create the log file `touch ~/Programs/MyApp/myapp-error.log`.
1. Copy the `logo.svg` or download the logo.

If everything works well, you should have available in the console the command `myapp` and your MyApp under the applications' menu.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for details.