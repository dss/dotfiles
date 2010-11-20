import XMonad

main = xmonad defaultConfig {
        focusFollowsMouse  = True,
        borderWidth        = 0,
        modMask            = mod1Mask,
        terminal           = "urxvt",
        normalBorderColor  = "#000000",
        focusedBorderColor = "#000000"
    }


