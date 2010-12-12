-- Marco Fontani - MFONTANI@cpan.org
-- vim: set foldmethod=marker filetype=haskell foldlevel=0 :
--
-- Imports {{{
import XMonad
import XMonad.Util.EZConfig -- (additionalKeys)
import XMonad.Config.Xfce
-- import XMonad.Config.Gnome
-- }}}

main = xmonad $ defaultConfig -- xfceConfig
        -- {{{ customizations of default configuration
        {   terminal = "terminator"   -- default terminal
            , modMask = mod4Mask      -- set the mod key to the windows key
            , normalBorderColor  = "#032c18"
            , focusedBorderColor = "#076c3a"
        }
        -- }}}
        -- {{{ Keys removed from default configuration
        `removeKeys`
        [
            (mod4Mask,xK_p) -- remove default xfrun4, so dmenu_run can be used
        ]
        -- }}}
        -- {{{ Additional keys
        `additionalKeys`
        [
            -- {{{ replacement menu via dmenu_run
            ((mod4Mask,xK_p),spawn "dmenu_run -nb black -nf grey -sb darkblue"),
            -- }}}
            -- {{{ Dell Mini 9 specific function keys
            -- got these via xev
            ((0,0x1008ff12),spawn "amixer set Master toggle | grep 'Mono: Playback' | dzen2 -p 2"),
            ((0,0x1008ff11),spawn "amixer set Master 2%- | grep 'Mono: Playback' | dzen2 -p 2"),
            ((0,0x1008ff13),spawn "amixer set Master 2%+ | grep 'Mono: Playback' | dzen2 -p 2"),
            ((0,0x1008ff93),spawn "/usr/bin/acpitool -b | perl -nle's,  +,,g;print' | dzen2 -p 2"),
            ((0,0x1008ff59),spawn "xrandr --auto"), -- FIXME see if this really works
            ((0,0x1008ff17),spawn "wlan-info | dzen2 -p 3"),
            -- }}}
            -- {{{ Additional keys
            ((mod4Mask,xK_l),spawn "xflock4") -- win+shift+l to lock computer
            -- }}}
        ]
        -- }}}
