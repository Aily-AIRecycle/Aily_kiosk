# Aily Kiosk
![License](https://img.shields.io/github/license/Aily-AIRecycle/Aily_kiosk)
![GitHub contributors](https://img.shields.io/github/contributors/Aily-AIRecycle/Aily_kiosk)

This repository is part of the Aily AI Recycle project. This repository contains a flutter desktop application for Aily's kiosks that automatically classify and separate waste.
## Table of Contents

- [Aily Kiosk](#aily-kiosk)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Dependencies](#dependencies)
    - [Aily\_embedded](#aily_embedded)
    - [Aily\_ai](#aily_ai)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Code Files](#code-files)
  - [Contributors](#contributors)
  - [License](#license)

## Introduction

This project is a flutter desktop application that enters the kiosk screen of the Aily - AIRecycler.

## Dependencies

The project works with Aily_embedded and Aily_ai, repositories in AI-AIRecycle organization, to provide dependencies.

### [Aily_embedded](https://github.com/Aily-AIRecycle/Aily_embedded)
Kiosk runs the python program that sends the data to the embedded system through the serial port. The embedded system receives the data and controls the hardware. And that python program is inside the Aily_ai repository.
### [Aily_ai](https://github.com/Aily-AIRecycle/Aily_ai)
The Aily_ai repository is a repository that contains the AI model that classifies waste. The kiosk uses the AI model to classify waste.

## Installation

To run this code on your PC, follow the steps below:
1. Clone this repository to your local machine.
2. Install the dependencies listed in the [Dependencies](#dependencies) section.
3. Run the `main.dart` file in the `lib` directory.
4. The application should now be running on your PC.
## Usage

This repository is for the Aily_AIRecycle project.

The Aily_AIRecycle project is a project that automatically classifies and separates waste using AI.

The Aily_AIRecycle project consists of the following repositories:

- [Aily_embedded](https://github.com/Aily-AIRecycle/Aily_embedded): Embedded system Arduino code for Aily_AIRecycle project.
- [Aily_ai](https://github.com/Aily-AIRecycle/Aily_ai): YOLOv5 model code for Aily_AIRecycle project.
- [Aily_web](https://github.com/Aily-AIRecycle/Aily_web): Web application code for Aily_AIRecycle project.
- [Aily_app](https://github.com/Aily_AIRecycle/Aily_app): Mobile flutter application code for Aily_AIRecycle project.
- [Aily_backend](https://github.com/Aily_AIRecycle/Aily_backend): Backend Java Spring server code for Aily_AIRecycle project.
- [Aily_kiosk](https://github.com/Aily_AIRecycle/Aily_kiosk): Kiosk flutter application code for Aily_AIRecycle project.



## Code Files

This repository includes the following code files:

- `lib/main.dart`: The main file of the application.
- `lib/mainscreen.dart`: The main screen of the application.
- `lib/throwscreen.dart`: The throw screen of the application.
- `lib/loadingscreen.dart`: The loading screen of the application.
- `lib/choosescreen.dart`: The choose screen of the application.
- `lib/earnscreen.dart`: The earn screen of the application that earning points based on the trash what you throwed.
- `lib/finalscreen.dart`: The final screen of the application.
## Contributors

- [Lee SangHoon](https://github.com/dltkdgns00) - Flutter Application Developer, Kiosk UI/UX Designer

## License

The source code in this repository is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as per the terms of the license.
