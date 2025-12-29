# Kuberoke Website

## Development

### Quick Start with Docker

The easiest way to develop locally is using Docker, which automatically handles theme initialization:

#### Run local dev server
Development mode serves drafts and auto-reloads on changes:
```bash
docker build -t kuberoke-hugo .
docker run --rm -it -v $(pwd):/src -p 1313:1313 kuberoke-hugo
```

Visit http://localhost:1313 to see the site.

#### Build for production
```bash
docker run --rm -v $(pwd):/src kuberoke-hugo --minify
```

The built site will be in the `public/` directory.

### Manual Setup (without Docker)

If you prefer to run Hugo directly on your machine:

1. **Initialize theme** (first time only):
   ```bash
   git submodule update --init --recursive
   ```

2. **Install Hugo**: Follow instructions at https://gohugo.io/installation/

3. **Run dev server**: `hugo server -D`

4. **Build**: `hugo --minify`

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