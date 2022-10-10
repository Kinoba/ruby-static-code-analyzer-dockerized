# Ruby static code analyzer

## Usage

```bash
docker run --rm -v $(pwd):/app kinoba/ruby-static-code-analyzer [static tool]
```

### Available tools

For now this image is able to run:

- Brakeman
- Danger
- Rubocop
  - rubocop-rails
  - rubocop-rspec
  - rubocop-checkstyle_formatter
  - rubocop-performance
  - rubocop-rspec
- Rubycritic

## Contribute

```bash
DOCKER_DEFAULT_PLATFORM=linux/amd64 docker build . -t kinoba/ruby-static-code-analyzer
docker push kinoba/ruby-static-code-analyzer
```

## TODO

