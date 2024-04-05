# Kuberoke Website

## Development

### Initialise theme
`git submodule add -b main https://github.com/nunocoracao/blowfish.git themes/blowfish`

### Run local dev server
`docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:latest server`

### Build page once
`docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:latest`

### Update theme
```
cd themes/blowfish
git checkout [VERSION/TAG/COMMIT]
cd ../..
git add themes/blowfish
git commit
```

## Adding content

### New author
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


### New Kuberoke event
1. Create event page
`hugo new events/<event-slug>/index.md`

2. Add hero image as `events/<event-slug>/feature*`