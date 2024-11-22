# do-stablediffusion
Run StableDiffusion on CPU or GPU using the [do-framework](https://bit.ly/do-framework)

Container: iankoulski/do-stablediffusion

Source: [https://github.com/iankoulski/do-stablediffusion.git](https://github.com/iankoulski/do-stablediffusion.git)

# Usage

```
docker run --rm -it -v $(pwd):/wd iankoulski/do-stablediffusion /bin/bash -c "python3 /stable-diffusion/demo.py --device CPU --num-inference-steps 6 --output /wd/out.png --prompt 'a cat riding a horse'"
```

or interactive mode

```
docker run --rm -it -v $(pwd):/wd iankoulski/do-stablediffusion bash
```

Interactive mode shell:

```text

       __                 __        __    __         ___ ________           _           
  ____/ /___        _____/ /_____ _/ /_  / /__  ____/ (_) __/ __/_  _______(_)___  ____ 
 / __  / __ \______/ ___/ __/ __ `/ __ \/ / _ \/ __  / / /_/ /_/ / / / ___/ / __ \/ __ \
/ /_/ / /_/ /_____(__  ) /_/ /_/ / /_/ / /  __/ /_/ / / __/ __/ /_/ (__  ) / /_/ / / / /
\__,_/\____/     /____/\__/\__,_/_.___/_/\___/\__,_/_/_/ /_/  \__,_/____/_/\____/_/ /_/ 
                                                                                        

do-stablediffusion version latest


sd - Stable Diffusion CLI

usage: demo.py [-h] [--model MODEL] [--device DEVICE] [--seed SEED] [--beta-start BETA_START] [--beta-end BETA_END]
               [--beta-schedule BETA_SCHEDULE] [--num-inference-steps NUM_INFERENCE_STEPS] [--guidance-scale GUIDANCE_SCALE]
               [--eta ETA] [--tokenizer TOKENIZER] [--prompt PROMPT] [--params-from PARAMS_FROM] [--init-image INIT_IMAGE]
               [--strength STRENGTH] [--mask MASK] [--output OUTPUT]

options:
  -h, --help            show this help message and exit
  --model MODEL         model name
  --device DEVICE       inference device [CPU]
  --seed SEED           random seed for generating consistent images per prompt
  --beta-start BETA_START
                        LMSDiscreteScheduler::beta_start
  --beta-end BETA_END   LMSDiscreteScheduler::beta_end
  --beta-schedule BETA_SCHEDULE
                        LMSDiscreteScheduler::beta_schedule
  --num-inference-steps NUM_INFERENCE_STEPS
                        num inference steps
  --guidance-scale GUIDANCE_SCALE
                        guidance scale
  --eta ETA             eta
  --tokenizer TOKENIZER
                        tokenizer
  --prompt PROMPT       prompt
  --params-from PARAMS_FROM
                        Extract parameters from a previously generated image.
  --init-image INIT_IMAGE
                        path to initial image
  --strength STRENGTH   how strong the initial image should be noised [0.0, 1.0]
  --mask MASK           mask of the region to inpaint on the initial image
  --output OUTPUT       output image name

root@2c1f56198738:/stable-diffusion# 
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

