package sx.flatui;

import sx.skins.PaintSkin;
import sx.skins.Skin;
import sx.flatui.FlatUITheme;
import sx.widgets.special.TabButton;
import sx.widgets.Widget;
import sx.properties.Align;
import sx.themes.Theme;

using sx.Sx;


/**
 * Style for tab buttons
 *
 */
class TabButtonStyle
{
    /** Button style for vertical TabBar */
    static public inline var VERTICAL = 'tabButtonVertical';

    /**
     * Define styles for TabButton
     */
    static public function defineStyles (theme:FlatUITheme) : Void
    {
        theme.styles(TabButton).set(Theme.DEFAULT_STYLE, __defaultStyle);
        theme.styles(TabButton).set(VERTICAL, __verticalStyle);
    }


    /**
     * Default style
     */
    static private function __defaultStyle (widget:Widget) : Void
    {
        var tab = __common(widget);
        tab.padding.horizontal.dip = FlatUITheme.DEFAULT_PADDING_HORIZONTAL;
        tab.height.pct = 100;
    }


    /**
     * Buttons for vertical tab bars
     */
    static private function __verticalStyle (widget:Widget) : Void
    {
        var tab = __common(widget);
        tab.padding.vertical.dip = FlatUITheme.DEFAULT_PADDING_VERTICAL;
        tab.width.pct = 100;
    }


    /**
     * Common part of all styles
     */
    static private function __common (widget:Widget) : TabButton
    {
        var tab : TabButton = cast widget;

        #if stablexui_flash
            tab.backend.buttonMode    = true;
            tab.backend.mouseChildren = false;
            tab.backend.mouseEnabled  = tab.enabled;
            tab.onDisable.add(__onDisableFlash);
            tab.onEnable.add(__onEnableFlash);
        #end

        var fontSize = FlatUITheme.FONT_SIZE.toPx();

        var format = FlatUITheme.textFormat(fontSize, FlatUITheme.FONT_COLOR_LIGHT, true);
        tab.up.label.setTextFormat(format);

        var format = FlatUITheme.textFormat(fontSize, FlatUITheme.COLOR_TURQUOISE, true);
        tab.hover.label.setTextFormat(format);

        tab.down.skin = __skin(FlatUITheme.COLOR_TURQUOISE_LIGHT);
        tab.up.skin = __skin(FlatUITheme.COLOR_WET_ASPHALT_LIGHT);

        return tab;
    }


    /**
     * Create skin with specified color
     */
    static private function __skin (color:Int) : Skin
    {
        var skin = new PaintSkin();
        skin.color = color;

        return skin;
    }


#if stablexui_flash

    /**
     * Callback to invoke when button disabled (for stablexui-flash backend)
     */
    static private function __onDisableFlash (w:Widget) : Void
    {
        w.backend.mouseEnabled = false;
    }

    /**
     * Callback to invoke when button enabled (for stablexui-flash backend)
     */
    static private function __onEnableFlash (w:Widget) : Void
    {
        w.backend.mouseEnabled = true;
    }

#end

}//class TabButtonStyle