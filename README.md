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
of images for your project and your taste.

### Wait, what is Binder?

[Binder](https://mybinder.org/) is a service that allows you to turn your repository into
an executable environment, allowing any user to actually interact with Jupyter notebooks
rather than just read them. We are, really, a little cheatery using `Dockerfile` for this.

### Okay, so how do I use it?

The image can easily be obtained from Docker Hub. In your `Dockerfile` just specify:

```dockerfile
FROM paveloom/binder-base:tag
```

where the `tag` is one of the following:

* [0.1.0](https://github.com/paveloom-d/binder-base/releases/tag/v0.1.0)

### Can I easily see what it looks like?

Yeah, just check this repository on Binder. For example, here's a
[link](https://mybinder.org/v2/gh/paveloom-d/binder-base/master?urlpath=lab) to a stable
master branch. Yeah, by the way, you're likely to see an error that the page is not found.
This is fine as this image does not contain any code. Just click on the Jupyter logo on the
top left, it will take you to the homepage. There you'll be able to create a new notebook
and check that everything's okay.
