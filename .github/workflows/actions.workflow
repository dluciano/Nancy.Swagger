name: .NET Core

on: [push]

jobs:
  build:

    runs-on: [windows, x64]

    steps:
    - uses: actions/checkout@v2
    - name: Setup .NET Core
      uses: actions/setup-dotnet@v1
      with:
        dotnet-version: 2.2.108
    - name: Build with dotnet
      run: dotnet build --configuration Release
