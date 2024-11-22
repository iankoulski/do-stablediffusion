# do-stablediffusion
Run StableDiffusion on CPU or GPU using the [do-framework](https://bit.ly/do-framework)

Container: iankoulski/do-stablediffusion

Source: [https://github.com/iankoulski/do-stablediffusion.git](https://github.com/iankoulski/do-stablediffusion.git)

# Usage

```
docker run --rm -it -v $(pwd):/wd iankoulski/do-stablediffusion bash -c "sd --device CPU --num-inference-steps 3 --output /wd/out.png --prompt 'cat riding a horse'" 
```

or

```
docker run --rm -it -v $(pwd):/wd iankoulski/do-stablediffusion bash
```

# Container project description


This is a Depend on Docker project which comes operational out of the box 
and is configured with reasonable defaults, which can be customized as needed.


The project contains the following scripts:
* `config.sh` - open the configuration file .env in an editor so the project can be customized
* `build.sh` - build the container image
* `test.sh` - run container unit tests
* `push.sh` - push the container image to a registry
* `pull.sh` - pull the container image from a registry
* `run.sh [cmd]` - run the container, passing an argument overrides the default command
* `status.sh` - show container status - running, exited, etc.
* `logs.sh` - tail container logs
* `exec.sh [cmd]` - open a shell or execute a specified command in the running container

# References
* [do-framework](https://bit.ly/do-framework)
* [stable-diffusion](https://github.com/CompVis/stable-diffusion)
* [stable-diffusion OpenVino](https://github.com/bes-dev/stable_diffusion.openvino)
* [stable-diffusion cpu only](https://github.com/darkhemic/stable-diffusion-cpuonly)

