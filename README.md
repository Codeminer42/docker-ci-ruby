# Codeminer42 Ruby Image for CI builds

Docker Ruby images used by Gitlab CI.

## Dependencies

The following dependencies are being installed on all images:

* Node.js v4.4.7 and npm
* PhantomJS v1.9.8
* Qt v5

## Tags

We currently have images for the following Rubies.

### CRuby images

- `2.3`, `latest` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.3/Dockerfile)
- `2.2` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.2/Dockerfile)
- `2.1` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.2/Dockerfile)

### JRuby images

- `9.1-jruby` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/9.1-jruby/Dockerfile)

## Contributing

The images should setup an environment that is widely used, 
please don't install dependencies that are specific to a 
project. It's also good to have a pattern and all images 
support the same things, why a ruby version would use
PhantomJS and the other doesn't?
