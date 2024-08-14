# nerc-images-template

An OpenShift AI Image for ...

Base image: [quay.io/...](https://github.com/...)

| Python packages | Description |
| --- | --- |
| jupyterlab | A web-based user interface to work with Jupyter notebooks, editors, terminals, and custom components |

| System packages | Description |
| --- | --- |
| something | ... |

You can pull the latest [nerc-images-template container image](https://github.com/nerc-images/nerc-images-template/pkgs/container/nerc-images-template) below:

```
podman pull quay.io/nerc-images/nerc-images-template:latest
```

You can build the container like this: 

```bash
podman build -t nerc-images/nerc-images-template:latest .
```

You can run the container like this: 

```bash
podman run --rm -it --entrypoint /bin/bash nerc-images/nerc-images-template:latest
```

You can push the container to quay.io like this: 

```bash
podman push nerc-images/nerc-images-template:latest quay.io/nerc-images/nerc-images-template:latest
```

