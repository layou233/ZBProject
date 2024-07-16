# download hugo to current path
HUGO_DOWNLOAD_URL="$(curl -Ls --retry 5 --max-time 30 "https://api.github.com/repos/gohugoio/hugo/releases/latest" | grep -Eo 'https:\/\/github.com\/gohugoio\/hugo\/releases\/download\/v[0-9\.]+\/hugo_extended_[0-9\.]+_linux-amd64.tar.gz')"
wget -O hugo.tar.gz $HUGO_DOWNLOAD_URL
tar -xzvf hugo.tar.gz

# build home
cd home
../hugo
mv public ../public
cd ../

# build doc
npm i -g honkit && honkit build ./gitbook-doc ./public/doc

# build ZBProxy doc
pip install mkdocs-material mkdocs-static-i18n
mkdocs build -f ./zbproxy-doc/mkdocs.yml -d ../public/doc/ZBProxy

# copy static pages
mv app ./public/app
mv js ./public/js
mv image ./public/image