# Defined in - @ line 1
function easyeffects --wraps='flatpak run com.github.wwmm.easyeffects' --description 'alias easyeffects=flatpak run com.github.wwmm.easyeffects'
  flatpak run com.github.wwmm.easyeffects $argv;
end
