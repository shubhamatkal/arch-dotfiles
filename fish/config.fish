
#custom aliases
alias sp="sudo pacman"
alias update-mirrors="rate-mirrors --allow-root --protocol https arch | sudo tee /etc/pacman.d/mirrorlist"
alias vim="nvim"
#auto using startx when in tty at start
if test -z "$DISPLAY"
  # Check if on tty1 (optional, see note below)
  # if [ "$(tty)" = "/dev/tty1" ]; then
  #   # Commands to be executed on tty1 (e.g., exec startx)
  # end

  # Assuming you only want X11 on tty1, uncomment these lines
  if [ "$(tty)" = "/dev/tty1" ]; then
    exec startx
  end
end
