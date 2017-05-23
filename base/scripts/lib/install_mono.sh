#!/bin/bash
set -e
rm -rf /var/lib/apt/lists/*
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
apt-get update -y
apt-get install -y binutils mono-runtime ca-certificates-mono referenceassemblies-pcl
rm -rf /var/lib/apt/lists/*
