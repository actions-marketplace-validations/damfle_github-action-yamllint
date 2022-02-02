#!/bin/sh

CMDLINE="-f github"

if [ ! -z $INPUT_CONFIG_FILE ]; then
  CMDLINE="${CMDLINE} -c ${INPUT_CONFIG_FILE}"
fi

if [ ! -z $INPUT_CONFIG_DATA ]; then
  CMDLINE="${CMDLINE} -d ${INPUT_CONFIG_DATA}"
fi

if [ ! -z $INPUT_STRICT ]; then
  CMDLINE="${CMDLINE} -s"
fi

# Yup not the cleanest but prevent to add more deps to the image
grep 'PRETTY_NAME' /etc/os-release | cut -d'=' -f2 | sed  's/"//g'
yamllint -v

yamllint ${CMDLINE} ${INPUT_FILE_OR_DIR}
