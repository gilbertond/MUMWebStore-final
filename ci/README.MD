-----INTERCEPT JOB--------
##Update file permission
git update-index --chmod=+x ci/tasks/package.sh

fly -t targetName intercept -j pipelineName/jobName