for package in ./packages/**/pubspec.yaml
do
  cd $(dirname $package)
if command -v fvm &> /dev/null
  then
    fvm flutter pub get
  else
    flutter pub get
  fi
  cd ../../
done

if command -v fvm &> /dev/null
then
  fvm flutter pub get
else
  flutter pub get
fi
