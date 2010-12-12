dumb:
	@echo use "make install" to install .xmonad/xmonad.hs and .xinitrc in ${HOME}

install:
	@cp -fv .xmonad/xmonad.hs ~/.xmonad/
	@cp -fv .xinitrc ~/

update:
	@cp -fv ~/.xmonad/xmonad.hs .xmonad/
	@cp -fv ~/.xinitrc ./
