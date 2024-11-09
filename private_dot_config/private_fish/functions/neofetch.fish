function neofetch --wraps='pokeget sylveon --hide-name | fastfetch --file-raw -' --description 'alias neofetch=pokeget sylveon --hide-name | fastfetch --file-raw -'
  pokeget sylveon --hide-name | fastfetch --file-raw - $argv
        
end
