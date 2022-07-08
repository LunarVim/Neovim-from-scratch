Simple `Dockerfile` to create a Docker container based on Fedora 35, with a nightly build of Neovim.

To build it use either `docker` or `podman`:

```
$ docker build -t neovim-playground .
$ docker run -it neovim-playground bash
```

As described in https://www.youtube.com/watch?v=ctH-a-1eUME, you will need to
run `nvim` twice to get Neovim setup and running. After than you can then try
out the features mentioned in the video.
