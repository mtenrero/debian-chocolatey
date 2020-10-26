# debian-chocolatey

[Latest Build Status](https://hub.docker.com/r/tenrero/debian-chocolatey/builds)

Docker image for creating a container with Chocolatey running on Mono.

Very useful for creating NuPKG packages using Unix infrastructre with containers.

It also contains curl, wget and git, the most useful binaries in compilation containers, it's intended to be used
in Azure Pipelines also, and git is needed for repository checkout.

## Usage

Test the image using `docker run --rm -v $PWD:$PWD -w $PWD tenrero/debian-chocolatey`

See [the example directory](./example/README.md) for a basic package example.

## FAQ

1. "Cannot create a package that has no dependencies nor content."

The nuspec file most likely requires this for the files section:
```xml
  <files>
    <file src="tools/**" target="tools" />
  </files>

```
Note the comment in the nuspec template that reads:

```xml
<!--Building from Linux? You may need this instead: <file src="tools/**" target="tools" />-->
```
