package sx.flatui;

import sx.flatui.FlatUITheme;
import sx.properties.Orientation;
import sx.widgets.TabBar;
import sx.widgets.Widget;
import sx.properties.Align;
import sx.themes.Theme;



/**
 * Style for tab bars
 *
 */
class TabBarStyle
{
    /** Vertically oriented tab bar */
    static public inline var VERTICAL = 'verticalTabBar';


    /**
     * Define styles for TabBar
     */
    static public function defineStyles (theme:FlatUITheme) : Void
    {
        theme.styles(TabBar).set(Theme.DEFAULT_STYLE, __defaultStyle);
        theme.styles(TabBar).set(VERTICAL, __verticalStyle);
    }


    /**
     * Default style
     */
    static private function __defaultStyle (widget:Widget) : Void
    {
        var bar : TabBar = cast widget;

        bar.skin = FlatUITheme.SKIN_INVERSE_HOVER;
        bar.align.set(Left, Middle);
        bar.padding.vertical.dip   = 0;
        bar.padding.horizontal.dip = FlatUITheme.DEFAULT_PADDING_HORIZONTAL;
        bar.width.pct  = 100;
        bar.height.dip = FlatUITheme.GREATER_HEIGHT;
    }


    /**
     * Vertical style
     */
    static private function __verticalStyle (widget:Widget) : Void
    {
        var bar : TabBar = cast widget;

        bar.orientation = Vertical;
        bar.tabStyle = TabButtonStyle.VERTICAL;
        bar.skin = FlatUITheme.SKIN_INVERSE_HOVER;
        bar.align.set(Center, Top);
        bar.padding.vertical.dip   = FlatUITheme.DEFAULT_PADDING_VERTICAL;
        bar.padding.horizontal.dip = 0;//FlatUITheme.DEFAULT_PADDING_HORIZONTAL;
        bar.width.dip  = FlatUITheme.DEFAULT_WIDTH;
        bar.height.pct = 100;
    }

}//class TabBarStyle