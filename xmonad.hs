import XMonad
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders
import XMonad.ManageHook
import XMonad.Actions.CycleRecentWS
import XMonad.Layout.ShowWName
import qualified Data.Map as M


myManageHook :: [ManageHook]
myManageHook = 
    [ resource  =? "Do"   --> doIgnore ]

myKeys (XConfig {modMask = modm}) = M.fromList $
       	 [ ((modm, xK_p), spawn "gnome-do") 
          ,((modm, xK_Tab), cycleRecentWS [xK_Alt_L] xK_Tab xK_grave)
         ]

main = xmonad gnomeConfig
       {
       modMask = mod4Mask
       , layoutHook = showWName $ smartBorders $ layoutHook defaultConfig
       , manageHook = manageHook gnomeConfig <+> composeAll myManageHook
       , keys = \c -> myKeys c `M.union` keys gnomeConfig c
       }
