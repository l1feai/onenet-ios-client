#!/bin/bash
# Build OneNetwork iOS SDK from Go source
set -e

rn_app_path=$(pwd)
onenetPath=$1
if [ -z "${1+x}" ]
then
    # Default to our forked source
    onenetPath="$(dirname "$0")/../onenet"
fi

version=$2
if [ -z "${2+x}" ]
then
    version=0.0.1
fi

echo "Building OneNetwork iOS SDK v${version}..."
echo "Source: ${onenetPath}"

cd $onenetPath
gomobile init
CGO_ENABLED=0 gomobile bind \
    -target=ios \
    -bundleid=network.l1fe.onenetwork.framework \
    -ldflags="-X github.com/l1feai/one-network/version.version=$version" \
    -o $rn_app_path/OneNet/OneNetworkSDK.xcframework \
    $onenetPath/client/ios/OneNetSDK

cd -

echo "Done! SDK built at: $rn_app_path/OneNet/OneNetworkSDK.xcframework"
