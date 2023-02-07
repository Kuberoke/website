# Kuberoke Website

## Development
### Run local dev server
`docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:latest server`

### Build page once
`docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:latest`

### Add new kuberoke event
`hugo new events/<event-slug>/index.md`

### Update theme
```
cd themes/blowfish
git checkout [VERSION/TAG/COMMIT]
cd ../..
git add themes/blowfish
git commit
```

### Add new author
1. Create json file in `data/authors/`, the filename is the author's key
```json
{
    "name": "Lian",
    "image" : "img/avatars/lian.png",
    "bio": "Chief Karaoke Officer",
    "social": [
        { "twitter": "https://twitter.com/lianmakesthings" },
        { "mastodon": "https://hachyderm.io/@lianmakesthings"}
    ]
}

```
2. Add key to event pages front matter
```yaml
authors:
  - "lian"
```