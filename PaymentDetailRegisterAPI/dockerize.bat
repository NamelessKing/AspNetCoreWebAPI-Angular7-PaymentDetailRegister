@echo off

echo Publish project...
dotnet publish PaymentDetailRegisterAPI.csproj -o bin/Publish -c Release

echo Build image 
docker build -t payment-detail-register:1.0 . #

echo Tag latest image
docker tag payment-detail-register:1.0 payment-detail-register:latest

echo Completed 
  