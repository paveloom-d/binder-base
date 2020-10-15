# Description

### A notice
If you are unsure, please refer to the description on the last commit on the
[`master`](https://github.com/paveloom-d/binder-base/tree/master) branch.

### What is this?

This is a Docker image that contains the basic elements needed for an image that could be
used on [Binder](https://mybinder.org/). Namely, Python 3 and Jupyter. The idea is to either
make other base images based on this image that include additional elements (such as TeX
dependencies or another language) or immediately use this image in your project,
updating only what you _need_ (e.g. environment and/or code).

You might ask, “And why not use [`repo2docker`](https://github.com/jupyterhub/repo2docker)
like normal people?”. Well, the point is that `repo2docker` builds an image from scratch
_every time_ you call it. Such builds can be particularly long if your project contains
heavy dependencies (like TeX, for example). Say if you just added a new comment, you still
have to wait about a dozen minutes, if not more, and so every time the code is updated.

With this image and subsequent add-ons you'll probably want to make, you can get a system
of images for your project(s) and your taste.

### Only Python 3 and Jupyter?

Well, a couple more packages you'll probably need. See below for a full list.

<details>
<summary>Content of the image</summary>
<ul>
  <li>Base image: Ubuntu (20.04)</li>
  <li>Essential packages:</li>
  <ul>
    <li>apt-utils</li>
    <li>apt-transport-https</li>
    <li>dialog</li>
    <li>htop</li>
    <li>ca-certificates</li>
    <li>git</li>
    <li>nano</li>
    <li>wget</li>
    <li>curl</li>
    <li>zip</li>
    <li>unzip</li>
    <li>
      <a href="https://github.com/sudo-project/sudo">sudo</a> (1.9.1)</li>
    <li>ssh</li>
    <li>software-properties-common</li>
  </ul>
  <li>Non-root user set-up</li>
  <li>Python:</li>
  <ul>
    <li>python3-dev</li>
    <li>python3-pip</li>
  </ul>
  <li>Node.js and npm</li>
  <li>Jupyter:</li>
  <ul>
    <li>jupyter</li>
    <li>jupyterlab</li>
    <li>Extensions:</li>
    <ul>
      <li>
        <a href="https://github.com/manics/jupyter-offlinenotebook">
          jupyter-offlinenotebook
        </a>
      </li>
    </ul>
  </ul>
</ul>
</details>

### Okay, so how do I use it?

The image can easily be obtained from
[Docker Hub](https://hub.docker.com/r/paveloom/binder-base). In your `Dockerfile` just
specify:

```dockerfile
FROM paveloom/binder-base:tag
```

where the `tag` is one of the following:

* [0.1.3](https://github.com/paveloom-d/binder-base/releases/tag/v0.1.3)
* [0.1.2](https://github.com/paveloom-d/binder-base/releases/tag/v0.1.2)
* [0.1.1](https://github.com/paveloom-d/binder-base/releases/tag/v0.1.1)
* [0.1.0](https://github.com/paveloom-d/binder-base/releases/tag/v0.1.0)

### Can I easily see what it looks like?

Yeah, just check this repository on [Binder](https://mybinder.org/). For example, here's a
[link](https://mybinder.org/v2/gh/paveloom-d/binder-base/master?urlpath=lab) to the stable
`master` branch.
