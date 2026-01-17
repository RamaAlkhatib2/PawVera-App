FROM mobiledevops/flutter-sdk-image:latest

WORKDIR /app

COPY pubspec.yaml .
RUN flutter pub get

COPY lib/ ./lib/
COPY test/ ./test/

RUN flutter test

RUN flutter analyze
