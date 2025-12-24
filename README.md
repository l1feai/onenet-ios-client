<br/>
 <div align="center">
 <p align="center">
   <img width="234" src="https://raw.githubusercontent.com/l1feai/onenet/main/docs/media/logo-full.png"/>
 </p>
   <p>
      <a href="https://github.com/l1feai/onenet/blob/main/LICENSE">
        <img height="20" src="https://www.gnu.org/graphics/gplv3-88x31.png" alt="License: GPL-3.0" />
      </a>
     <a href="#">
         <img src="https://img.shields.io/badge/slack-@l1feai-red.svg?logo=slack" alt="Slack"/>
      </a>
      <a href="https://github.com/l1feai/onenet-ios-client/actions/workflows/build.yml">
         <img src="https://github.com/l1feai/onenet-ios-client/actions/workflows/build.yml/badge.svg" alt="Build Status"/>
      </a>
      <a href="https://github.com/l1feai/onenet-ios-client/actions/workflows/test.yml">
         <img src="https://github.com/l1feai/onenet-ios-client/actions/workflows/test.yml/badge.svg" alt="Test Status"/>
      </a>
   </p>
 </div>


 <p align="center">
 <strong>
   Start using OneNet at <a href="https://l1fe.network">l1fe.network</a>
   <br/>
   See <a href="https://docs.l1fe.network/">OneNet Documentation</a>
   <br/>
    Join our <a href="#">Slack channel</a>
   <br/>

 </strong>
 </p>

 <br>

# OneNet iOS Client

The OneNet iOS client allows connections from mobile devices running iOS 14.0+ to private resources in the OneNet network.

## Install
OneNet is only available to L1fe team members. You must ask your team lead to share the app link with you.

## Screenshots

<p align="center">
  <img src="https://github.com/l1feai/onenet-ios-client/assets/32096965/f3eff73a-44e9-46e2-b63d-cce004246875" alt="mainscreen" width="250" style="margin-right: 10px;"/>
  <img src="https://github.com/l1feai/onenet-ios-client/assets/32096965/0e73f79a-0d95-41eb-8e8e-6ed489c85b14" alt="peer-overview" width="250" style="margin-right: 10px;"/>
  <img src="https://github.com/l1feai/onenet-ios-client/assets/32096965/a633c80e-86d0-41fe-88d0-8a7bb6cbaf66" alt="menu" width="250"/>
</p>

## Code structure
The code is divided into 4 parts:
- The main onenet Go code from the [OneNet](https://github.com/l1feai/onenet) repo which is compiled into an xcframework. This contains most of the client logic.
- The network extension /OnenetNetworkExtension that is running in the background where the compiled Go code is executed.
- The UI and app code under `/OneNet`
- The `/OnenetKit/NetworkExtensionAdapter` that controls the extension and builds the link between UI and extension

## Requirements

- iOS 14.0+
- Xcode 16.1+
- Go 1.24+
- gomobile

## Run locally

To build the app, this repository and the main onenet repository are needed.

```bash
git clone https://github.com/l1feai/one-network.git
git clone https://github.com/l1feai/onenet-ios-client.git
cd ios-client
```

Install gomobile if you haven't already:
```bash
go install golang.org/x/mobile/cmd/gomobile@latest
```

Build the xcframework from the main `onenet` repo using the build script:
```bash
./build-go-lib.sh ../one-network
```

Open the Xcode project, and we are ready to go.

> **Note:** The app cannot be run in the iOS simulator. To test the app, a physical device needs to be connected to Xcode via cable and set as the run destination.

### Firebase Configuration (Optional)

The app supports Firebase for analytics and crash reporting. To enable it, add your `GoogleService-Info.plist` file to the project root. The app will work without Firebase configuration.

## Other project repositories

OneNet project is composed of multiple repositories:
- OneNet: https://github.com/l1feai/onenet, contains the code for the agents and control plane services.
- Dashboard: https://github.com/l1feai/onenet-dashboard, contains the Administration UI for the management service
- Documentations: https://github.com/l1feai/onenet-docs, contains the documentation from https://docs.l1fe.network
- Android Client: https://github.com/l1feai/onenet-android-client
