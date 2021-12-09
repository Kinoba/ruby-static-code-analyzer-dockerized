# Ruby static code analyzer

## Usage

```
docker run --rm -v $(pwd):/app kinoba/ruby-static-code-analyzer [static tool]
```

### Available tools

For now this image is able to run:

- Brakeman
- Rubocop
  - rubocop-rails
  - rubocop-rspec
  - rubocop-checkstyle_formatter
  - rubocop-performance
  - rubocop-rspec
- Rubycritic

## Contribute

```
docker build . -t kinoba/ruby-static-code-analyzer
```

## TODO

