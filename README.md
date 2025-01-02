# Codeminer42 Ruby Image for CI builds

Docker Ruby images used by Gitlab CI.

## Dependencies

The following dependencies are being installed on all images:

* Node.js v18.17.1 (with npm)
* Google Chrome (latest stable)
* Chrome Webdriver (version 131.0.6778.85)

## Tags

We currently have images for the following Rubies.

### CRuby images

- `3.4`, `latest stable` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/3.4/Dockerfile)
- `3.3`, [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/3.3/Dockerfile)
- `3.2` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/3.2/Dockerfile)
- `3.1` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/3.1/Dockerfile)
- `3.0` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/3.0/Dockerfile)
- `2.7` [Dockerfile](https://github.com/Codeminer42/docker-ci-ruby/blob/master/2.7/Dockerfile)

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
