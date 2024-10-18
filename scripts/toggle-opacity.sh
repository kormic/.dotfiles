#!/bin/bash
if grep -q "opacity = 1.0" ~/.alacritty.toml; then 
  sed -i '0,/opacity = 1.0/s//opacity = 0.6/' ~/.alacritty.toml 
else
  sed -i '0,/opacity = 0.6/s//opacity = 1.0/' ~/.alacritty.toml 
fi 
