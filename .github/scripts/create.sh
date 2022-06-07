set -e

npm install

mkdir -p artifacts
expr 1 + 1 + 1 + 4 > artifacts/output.log
cp -r bin/* artifacts

cd artifacts
mkdir -p ~/artifacts
zip ~/artifacts/artifacts.zip *
# node_modules/pkg/lib-es5/bin.js -t latest-macos-x64 index.js --targets=win -o=artifacts/papercutca
# cp -r artifacts/* ~/artifacts
cd ..
rm -rf artifacts

set +e