package sx.flatui;

import sx.properties.Side;
import sx.skins.Skin;
import sx.themes.Theme;
import sx.tween.Actuator;
import sx.widgets.Bmp;
import sx.widgets.Callout;
import sx.widgets.Widget;



/**
 * Style definitions for callouts
 *
 */
class CalloutStyle
{

    /**
     * Set callout styles
     */
    @:noCompletion
    static public inline function defineStyles (theme:FlatUITheme) : Void
    {
        theme.styles(Callout).set(Theme.DEFAULT_STYLE, __defaultStyle);
    }


    /**
     * Description
     */
    static private function __defaultStyle (widget:Widget) : Void
    {
        var callout : Callout = cast widget;
        callout.skin = FlatUITheme.SKIN_CALLOUT;
        callout.targetGap.dip = 12;

        callout.padding.horizontal = FlatUITheme.DEFAULT_PADDING_HORIZONTAL;
        callout.padding.vertical   = FlatUITheme.DEFAULT_PADDING_VERTICAL;

        callout.showEffect  = __showEffect;
        callout.closeEffect = __closeEffect;

        callout.arrowFactory = __arrowFactory;
    }


    /**
     * Create widget for an arrow of `callout` when `callout` is shown to the `side` of target widget.
     */
    static private function __arrowFactory (callout:Callout, side:Side) : Widget
    {
        var bitmapData = switch (side) {
            case Top    : FlatUITheme.getBitmapData('assets/flatui/callout-arrow-top.png');
            case Bottom : FlatUITheme.getBitmapData('assets/flatui/callout-arrow-bottom.png');
            case Left   : FlatUITheme.getBitmapData('assets/flatui/callout-arrow-left.png');
            case Right  : FlatUITheme.getBitmapData('assets/flatui/callout-arrow-right.png');
        }

        var arrow = new Bmp();
        arrow.bitmapData = bitmapData;

        return arrow;
    }


    /**
     * Callback for `Callout.showEffect`
     */
    static private function __showEffect (callout:Callout) : Actuator
    {
        callout.alpha = 0;

        var offset = switch (callout.currentSide) {
            case Top    : callout.offset.top;
            case Bottom : callout.offset.bottom;
            case Left   : callout.offset.left;
            case Right  : callout.offset.right;
        }
        offset.dip = -30;

        return callout.tween.cubicIn(0.15, callout.alpha = 1, offset.dip = 0);
    }


    /**
     * Callback for `Callout.closeEffect`
     */
    static private function __closeEffect (callout:Callout) : Actuator
    {
        var offset = switch (callout.currentSide) {
            case Top    : callout.offset.top;
            case Bottom : callout.offset.bottom;
            case Left   : callout.offset.left;
            case Right  : callout.offset.right;
        }

        return callout.tween.cubicIn(0.15, callout.alpha = 0, offset.dip = -30);
    }


}//class CalloutStyle