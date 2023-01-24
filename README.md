# Kuberoke Website

## Development
### Run local dev server
`docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:latest server`

### Build page once
`docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:latest`

### Add new post
`hugo new <name>/<of>/<page>/index.md`

### Update theme
```
cd themes/blowfish
git checkout [VERSION/TAG/COMMIT]
cd ../..
git add themes/blowfish
git commit
```
