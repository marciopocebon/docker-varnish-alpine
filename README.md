Varnish on Alpine in Docker
===========================

Varnish version: 4.1.9

Usage
-----

```
docker run -d \
  -v $PWD:/data \
  --env 'VCL_CONFIG=/data/varnish.vcl' \
  bugcrowd/varnish-alpine
```

Environment Variable Options
----------------------------

*   VCL_CONFIG - Where the varnish config is located inside the container. Mount a volume and point
VCL_CONFIG to the vcl file in the mount.
*   VCL - Base64 encoded VCL. Useful if you are running this on a cluster where mounting volumes is impractical
