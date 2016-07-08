# docker_flatten_image
This container exports and imports and image to flatten it and reduce it significantly in size. **Original process credits go to Brian DeHamer** who describes the process at https://www.ctl.io/developers/blog/post/optimizing-docker-images#flatten-your-image. 

## Docker hub link
https://hub.docker.com/r/woutercoebergh/flatten_image/

## Usage
The docker container uses docker commands that should be ran on the host so you have to mount the docker.sock volume in order for the docker container to run the docker command on the host.

```docker run -v /var/run/docker.sock:/var/run/docker.sock woutercoebergh/flatten_image image_to_flatten output_image_name```

Mounts the docker.sock on the host to the flatten_container.

```-v /var/run/docker/sock:/var/run/docker/sock ```

The name of the docker container.

```woutercoebergh/flatten_image ```

The arguments to the command, where *image_to_flatten* should be replaced with the name of the image to flatten, and *output_image_name* should be replaced with the output image name. **Note that the input may contain a tag, the output is automatically tagged with 'flat'**

```image_to_flatten output_image_name```

## Example
The following will result in a flattened image of container input:1.0.1 that is named *output:flat*

```docker run -v /var/run/docker.sock:/var/run/docker.sock woutercoebergh/flatten_image input:1.0.1 output```

## License
Copyright (c) 2016 Wouter Coebergh

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
