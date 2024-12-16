#!/bin/sh

mkdir -p info

echo BUILD INFO > info/info.txt
echo JENKINS JOB $"JOB_NAME" >> info/info.txt
echo LAST GIT COMMIT HASH $"GIT_COMMIT" >> info/info.txt
echo FREE PARAM $"MY_STRING" >> info/info.txt

