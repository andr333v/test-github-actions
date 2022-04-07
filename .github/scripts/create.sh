set -e

npm install

mkdir -p ~/artifacts
expr 1 + 1 > ~/artifacts/output.log
cp -r bin/* ~/artifacts
node_modules/pkg/lib-es5/bin.js -t latest-macos-x64 index.js --targets=win -o=artifacts/papercutca
cp -r artifacts/* ~/artifacts
rm -rf artifacts

set +e