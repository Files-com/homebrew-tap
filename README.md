# Files.com Homebrew Tap

Files.com is the cloud-native, next-gen MFT, SFTP, and secure file-sharing platform that replaces brittle legacy servers with one always-on, secure fabric. Automate mission-critical file flows—across any cloud, protocol, or partner—while supporting human collaboration and eliminating manual work.

With universal SFTP, AS2, HTTPS, and 50+ native connectors backed by military-grade encryption, Files.com unifies governance, visibility, and compliance in a single pane of glass.

Please visit our
[Developer Documentation Website](https://developers.files.com/cli/) to learn more about our developer tools.


## Introduction

The Files.com Homebrew Tap provides an easy way to automatically install Files.com applications in a macOS-based developer environment.

Homebrew Taps are third-party formula repositories. This tap lets you install and update Files.com CLI tools easily with the familiar `brew` commands, ensuring you always have the latest, verified binaries distributed by Files.com.

Currently, this repository only covers the Files.com CLI (Command Line Interface), but we may add the Files.com Agent or other apps to this tap in the future.


## Installation

If you haven’t already, [install Homebrew](https://brew.sh) first:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install the CLI:

```bash
brew install files-cli
```

To update your Files.com CLI to the latest version:

```bash
brew update
brew upgrade files-cli
```
