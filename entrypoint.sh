#!/bin/sh -le

ermetic iac scan "$@" --output-file-formats md
cat ${ERMETIC_OUTPUT_PATH}/${ERMETIC_OUTPUT_FILE_NAME}.md >> "$GITHUB_STEP_SUMMARY"