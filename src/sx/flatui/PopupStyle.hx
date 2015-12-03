package sx.flatui;

import sx.themes.Theme;
import sx.widgets.Popup;
import sx.widgets.Widget;



/**
 * Style definitions for popups
 *
 */
class PopupStyle
{

    /**
     * Set text field styles
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

        popup.origin.set(0.5, 0.5);
        popup.offset.set(-0.5, -0.5);

        popup.padding.horizontal = 2 * FlatUITheme.DEFAULT_PADDING_HORIZONTAL;
        popup.padding.vertical   = 2 * FlatUITheme.DEFAULT_PADDING_VERTICAL;

        popup.left.pct = 50;
        popup.top.pct = 50;
        popup.scaleX = popup.scaleY = 0;

        popup.showEffect = function(p) return p.tween.backOut(0.3, p.scaleX = 1, p.scaleY = 1);
        popup.closeEffect = function(p) return return p.tween.backIn(0.3, p.scaleX = 0, p.scaleY = 0);
    }


}//class PopupStyle