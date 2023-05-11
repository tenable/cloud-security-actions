#!/bin/sh -l

ermetic iac scan "$@" --output-file-formats md
trap "exit $?" EXIT

cat ${ERMETIC_OUTPUT_PATH}/${ERMETIC_OUTPUT_FILE_NAME}.md >> "$GITHUB_STEP_SUMMARY"