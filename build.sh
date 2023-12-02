# install hugo
CGO_ENABLED=1 GOAMD64=v3 go install -v -trimpath -ldflags="-s -w -buildid=" -tags extended github.com/gohugoio/hugo@latest

# build home
cd home
hugo
mv public ../public
cd ../

# build doc
npm i -g gitbook-cli && gitbook build ./docs ./public/doc