if [ "$1" != "" ]; then
  ENV_TO_CHANGE=$1
else
  PY_PATH=$(which python)
  CURRENT_ENV=$(echo ${PY_PATH:${#VENV_PATH}} | rev | cut -d '/' -f 3 | rev)
  ENV_TO_CHANGE="venv"
fi

source ../$ENV_TO_CHANGE/bin/activate

pip install -r ../requirements.txt