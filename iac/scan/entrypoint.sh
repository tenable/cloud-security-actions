#!/bin/sh

tenable iac scan "$@" --output-file-formats md
trap "exit $?" EXIT

cat ${TENABLE_OUTPUT_PATH}/${TENABLE_OUTPUT_FILE_NAME}.md >> "$GITHUB_STEP_SUMMARY"