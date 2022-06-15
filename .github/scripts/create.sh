set -e

npm install

mkdir -p artifacts
expr 1 + 1 + 1 + 4 > artifacts/output.log
cp -r bin/* artifacts
node_modules/pkg/lib-es5/bin.js -t latest-macos-x64 index.js --targets=win -o=artifacts/papercutca

cd artifacts
mkdir -p ~/artifacts
zip -r -m ~/artifacts/artifacts.zip *

cd ..
rm -rf artifacts

set +e