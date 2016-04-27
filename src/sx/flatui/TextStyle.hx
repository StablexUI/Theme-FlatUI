package sx.flatui;

import sx.layout.Layout;
import sx.properties.Align;
import sx.properties.Orientation;
import sx.flatui.FlatUITheme;
import sx.themes.Theme;
import sx.widgets.Text;
import sx.widgets.Widget;

using sx.Sx;



/**
 * Defines styles for ordinary texts
 *
 */
class TextStyle
{
    static public inline var LIGHT         = 'lightText';
    static public inline var ERROR         = 'errorText';
    static public inline var SUCCESS       = 'successText';
    static public inline var SMALL         = 'defaultSmallText';
    static public inline var LIGHT_SMALL   = 'lightSmallText';
    static public inline var ERROR_SMALL   = 'errorSmallText';
    static public inline var SUCCESS_SMALL = 'successSmallText';
    static public inline var BIG           = 'defaultBigText';
    static public inline var LIGHT_BIG     = 'lightBigText';
    static public inline var ERROR_BIG     = 'errorBigText';
    static public inline var SUCCESS_BIG   = 'successBigText';


    /** Which skins to use for each style */
    static private var __styles = [
        Theme.DEFAULT_STYLE => {fontColor:FlatUITheme.FONT_COLOR_DARK, bold:false, size:FlatUITheme.FONT_SIZE},
        LIGHT               => {fontColor:FlatUITheme.FONT_COLOR_LIGHT, bold:false, size:FlatUITheme.FONT_SIZE},
        SUCCESS             => {fontColor:FlatUITheme.COLOR_EMERALD, bold:true, size:FlatUITheme.FONT_SIZE},
        ERROR               => {fontColor:FlatUITheme.COLOR_ALIZARIN, bold:true, size:FlatUITheme.FONT_SIZE},
        SMALL               => {fontColor:FlatUITheme.FONT_COLOR_DARK, bold:false, size:FlatUITheme.FONT_SIZE_SMALL},
        LIGHT_SMALL         => {fontColor:FlatUITheme.FONT_COLOR_LIGHT, bold:false, size:FlatUITheme.FONT_SIZE_SMALL},
        SUCCESS_SMALL       => {fontColor:FlatUITheme.COLOR_EMERALD, bold:true, size:FlatUITheme.FONT_SIZE_SMALL},
        ERROR_SMALL         => {fontColor:FlatUITheme.COLOR_ALIZARIN, bold:true, size:FlatUITheme.FONT_SIZE_SMALL},
        BIG                 => {fontColor:FlatUITheme.FONT_COLOR_DARK, bold:false, size:FlatUITheme.FONT_SIZE_BIG},
        LIGHT_BIG           => {fontColor:FlatUITheme.FONT_COLOR_LIGHT, bold:false, size:FlatUITheme.FONT_SIZE_BIG},
        SUCCESS_BIG         => {fontColor:FlatUITheme.COLOR_EMERALD, bold:true, size:FlatUITheme.FONT_SIZE_BIG},
        ERROR_BIG           => {fontColor:FlatUITheme.COLOR_ALIZARIN, bold:true, size:FlatUITheme.FONT_SIZE_BIG}
    ];


    /**
     * Set text field styles
     */
    @:noCompletion
    static public inline function defineStyles (theme:FlatUITheme) : Void
    {
        var cfg;
        for (style in __styles.keys()) {
            cfg = __styles.get(style);
            theme.styles(Text).set(style, template.bind(_, cfg));
        }
    }


    static public function template (widget:Widget, cfg:{fontColor:Int, bold:Bool, size:Int}) : Void
    {
        var txt : Text = cast widget;
        __setTextFormat(txt, cfg.fontColor, cfg.bold, cfg.size);
    }


    /**
     * Setup text formatting options
     */
    static private inline function __setTextFormat (txt:Text, color:Int, bold:Bool, size:Int) : Void
    {
        var fontSize = size.toPx();
        var format   = FlatUITheme.textFormat(fontSize, color, bold);
        txt.setTextFormat(format);
    }


}//class TextStyle