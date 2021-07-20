import XMonad
import XMonad.Layout.ThreeColumns
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

main =
  xmonad $
    def
      { modMask = mod4Mask,
        terminal = "alacritty"
      }
      `additionalKeysP` [ ("M-S-z", spawn "xscreensaver-command -lock"),
                          ("M-S-=", unGrab *> spawn "scrot -s"),
                          ("M-]", spawn "firefox-developer-edition")
                        ]

myLayout = tiled ||| Mirror tiled ||| Full
  where
    tiled = Tall nmaster delta ratio
    nmaster = 1 -- Default number of windows in master pane
    ratio = 1 / 2 -- Default proportion of screen occupied by master pane
    delta = 3 / 100 -- Percent of screen to increment by when resizing pane