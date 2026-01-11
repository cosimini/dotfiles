#!/usr/bin/fish
set PYTHON_PATH "/home/davide/pyenv/"
set DEFAULT_ENV "def"

complete -x -c enpy -a "$(ls $PYTHON_PATH)"

function enpy;
  if test "" != "$argv[1]"
      set ENV_NAME $argv[1]
  else
      set ENV_NAME $DEFAULT_ENV
  end;
  printf "Activating $ENV_NAME"

  if test -d "$PYTHON_PATH$ENV_NAME"
    source "$PYTHON_PATH$ENV_NAME/bin/activate.fish"
  else
      printf "Not found"
  end;
end
