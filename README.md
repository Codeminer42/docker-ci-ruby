# Codeminer42 Ruby Image for CI builds

Docker Ruby images used by Gitlab CI.

## Dependencies

The following dependencies are being installed on all images:

* Node.js and npm
  * v6.11.1 (9.1-jruby)
  * v8.11.1 (2.1, 2.2, 2.3, 2.5)
  * v12.16.1 (2.6, 2.7)
* PhantomJS v2.1.1
* Qt v5 and Xvbf (only on CRuby images)
* Chrome Webdriver (latest stable)

## Tags

We currently have images for the following Rubies.

### CRuby images

- `2.6`, `latest` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.7/Dockerfile)
- `2.6` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.6/Dockerfile)
- `2.5` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.5/Dockerfile)
- `2.4` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.4/Dockerfile)
- `2.3` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.3/Dockerfile)
- `2.2` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.2/Dockerfile)
- `2.1` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.1/Dockerfile)

### JRuby images

- `9.1-jruby`, `jruby` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/9.1-jruby/Dockerfile)

## Contributing

`Dockerfiles` are stored under folders for each version.

For updating the images, just open a _pull request_ with
the new `Dockerfile` version and, after accepted, Docker
Hub will build automatically after a few minutes.

The images should setup an environment that is widely used,
please don't install dependencies that are specific to a
project. It's also good to have a pattern and all images
support the same things, why a ruby version would use
PhantomJS and the other doesn't?
