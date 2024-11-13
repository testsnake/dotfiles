function __auto_nvm --on-variable PWD --description 'automatically runs nvm use when possible when changing directories'
  if test -f ".nvmrc"; or test -f ".node-version"
      nvm use >/dev/null
  end
end