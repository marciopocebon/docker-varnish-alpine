#!/bin/bash

set -eo pipefail

if [[ "${VCL}" ]]; then
  echo "${VCL}" | base64 -d > ${VCL_CONFIG}
fi

varnishd -F -f ${VCL_CONFIG} -s malloc,${CACHE_SIZE} ${VARNISHD_PARAMS} &&
varnishncsa
