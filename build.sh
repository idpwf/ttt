#!/bin/sh

python3 -m venv .venv
. ./.venv/bin/activate
pip install -r requirements.txt
python3 -m pytest demo.py --junitxml=testresult.xml

mkdir -p info

echo BUILD INFO > info/info.txt
echo JENKINS JOB "$JOB_NAME" >> info/info.txt
echo LAST GIT COMMIT HASH "$GIT_COMMIT" >> info/info.txt
echo FREE PARAM "$MY_STRING" >> info/info.txt

tar czf app-"$BUILD_NUMBER".tgz app.sh info

