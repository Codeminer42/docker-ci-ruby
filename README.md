# Codeminer42 Ruby Image for CI builds

These files are used to generate the docker images used by Gitlab CI

## Dependencies

The following dependencies are being installed on all images:
* PhantomJS v1.9.8
* Node.js v4.4.7 and npm

## Tags

We currently have images for the following Rubies.

- `2.3`, `latest`
- `2.2`
- `2.1`

## Contributing

The images should setup an environment that is widely used, 
please don't install dependencies that are specific to a 
project. It's also good to have a pattern and all images 
support the same things, why a ruby version would use
PhantomJS and the other doesn't?
