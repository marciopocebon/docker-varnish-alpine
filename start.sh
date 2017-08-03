#!/bin/bash

set -e

if [[ "${VCL}" ]]; then
  echo "${VCL}" | base64 --decode > /etc/varnish/default.vcl
fi

exec varnishd -F -f ${VCL_CONFIG} -s malloc,${CACHE_SIZE} ${VARNISHD_PARAMS}
