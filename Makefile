dumb:
	@echo use "make install" to install .xmonad/xmonad.hs and .xinitrc in ${HOME}

install:
	@cp -fv .xmonad/xmonad.hs ~/.xmonad/
	@cp -fv .xmonad/xmonad-1024x800.png ~/.xmonad/
	@cp -fv .xmonad/sunspot_swedish_c1-1024x800.jpg ~/.xmonad/
	@cp -fv .xinitrc ~/
	@cp -fv .Xmodmap ~/

update:
	@cp -fv ~/.xmonad/xmonad.hs .xmonad/
	@cp -fv ~/.xmonad/xmonad-1024x800.png .xmonad/
	@cp -fv ~/.xmonad/sunspot_swedish_c1-1024x800.jpg .xmonad/
	@cp -fv ~/.xinitrc ./
	@cp -fv ~/.Xmodmap ./
