# Set global color styles, for example:
#
# function edin_error
#   set_color -o red
# end
#
# function edin_normal
#   set_color normal
#

function fish_greeting
  set_color $fish_color_autosuggestion
  echo "Hello yusuke"
  set_color normal
end
