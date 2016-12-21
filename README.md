Varnish on Alphine in Docker
============================

Varnish version: 4.1.2

Usage
-----

```
docker run -d \
  -v $PWD:/data \
  --env 'VCL_CONFIG=/data/varnish.vcl' \
  bugcrwod/varnish-aphine
```

The VCL_CONFIG must point to your varnish config. Mount a volume and point
VCL_CONFIG to the vcl file in the mount.
