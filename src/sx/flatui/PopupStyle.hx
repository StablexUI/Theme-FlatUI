package sx.flatui;

import sx.skins.Skin;
import sx.themes.Theme;
import sx.tween.Actuator;
import sx.widgets.Popup;
import sx.widgets.Widget;



/**
 * Style definitions for popups
 *
 */
class PopupStyle
{

    /**
     * Set popup styles
     */
    @:noCompletion
    static public inline function defineStyles (theme:FlatUITheme) : Void
    {
        theme.styles(Popup).set(Theme.DEFAULT_STYLE, __defaultStyle);
    }


    /**
     * Description
     */
    static private function __defaultStyle (widget:Widget) : Void
    {
        var popup : Popup = cast widget;
        popup.skin = FlatUITheme.SKIN_INPUT_DEFAULT;
        popup.overlay.skin = FlatUITheme.SKIN_OVERLAY;
        popup.overlay.alpha = 0;

        popup.origin.set(0.5, 0.5);
        popup.offset.set(-0.5, -0.5);

        popup.padding.horizontal = 2 * FlatUITheme.DEFAULT_PADDING_HORIZONTAL;
        popup.padding.vertical   = 2 * FlatUITheme.DEFAULT_PADDING_VERTICAL;

        popup.left.pct = 50;
        popup.top.pct = 50;

        popup.showEffect  = __showEffect;
        popup.closeEffect = __closeEffect;
    }


    /**
     * Callback for `Popup.showEffect`
     */
    static private function __showEffect (popup:Popup) : Actuator
    {
        if (popup.scaleX == 1 && popup.scaleY == 1) {
            popup.scaleX = popup.scaleY = 0;
        }

        if (popup.overlay != null) {
            popup.tween.linear(0.3, popup.overlay.alpha = 1);
            return popup.tween.backOut(0.3, popup.scaleX = 1, popup.scaleY = 1);
        } else {
            return popup.tween.backOut(0.3, popup.scaleX = 1, popup.scaleY = 1);
        }
    }


    /**
     * Callback for `Popup.closeEffect`
     */
    static private function __closeEffect (popup:Popup) : Actuator
    {
        if (popup.overlay != null) {
            popup.tween.linear(0.3, popup.overlay.alpha = 0);
            return popup.tween.backIn(0.3, popup.scaleX = 0, popup.scaleY = 0);
        } else {
            return popup.tween.backIn(0.3, popup.scaleX = 0, popup.scaleY = 0);
        }
    }


}//class PopupStyle