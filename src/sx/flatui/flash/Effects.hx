package sx.flatui.flash;

import flash.filters.ColorMatrixFilter;
import flash.geom.ColorTransform;
import flash.text.TextFormat;
import sx.backend.BitmapData;
import sx.backend.TextFormat;
import sx.widgets.Widget;




/**
 * Various effects implementation for FlatUITheme on stablexui-flash backend
 *
 */
class Effects
{
    /** For internal usage */
    static private var __colorTransform : ColorTransform;
    static private var __grayscaleFilter : flash.filters.ColorMatrixFilter;

    /**
     * Modify `bitmapData` by tinting each color component with corresponding color component from `tintColor`
     */
    static public inline function tintBitmapData (bitmapData:BitmapData, tintColor:Int) : Void
    {
        if (__colorTransform == null) {
            __colorTransform = new ColorTransform();
        }
        __colorTransform.color = tintColor;
        bitmapData.colorTransform(bitmapData.rect, __colorTransform);
    }


    /**
     * Create `TextFormat` instance for text fields
     */
    static public inline function textFormat (sizePx:Float, color:Int, bold:Bool) : TextFormat
    {
        var format = new TextFormat('Arial');
        format.size = Math.round(sizePx);
        format.color = color;
        format.bold  = bold;

        return format;
    }


    /**
     * Set grayscale mode for `widget`
     */
    static public inline function grayscale (widget:Widget) : Void
    {
        if (__grayscaleFilter == null) {
            __grayscaleFilter = new ColorMatrixFilter([
                1.2 * 0.2225, 1.2 * 0.7169, 1.2 * 0.0606, 0, 0,
                1.2 * 0.2225, 1.2 * 0.7169, 1.2 * 0.0606, 0, 0,
                1.2 * 0.2225, 1.2 * 0.7169, 1.2 * 0.0606, 0, 0,
                           0,            0,            0, 1, 0
            ]);
        }

        var filters = widget.backend.filters;
        if (filters == null) filters = [];
        filters.push(__grayscaleFilter);

        widget.backend.filters = filters;
    }


    /**
     * Remove grayscale mode from `widget`
     */
    static public inline function removeGrayscale (widget:Widget) : Void
    {
        var filters = widget.backend.filters;
        if (filters != null && filters.length > 0) {

            for (i in 0...filters.length) {
                if (Std.is(filters[i], ColorMatrixFilter)) {

                    var matrix = cast(filters[i], ColorMatrixFilter).matrix;
                    var isGrayscaleFilter = true;

                    for (j in 0...matrix.length) {
                        if (Math.abs(matrix[j] - __grayscaleFilter.matrix[j]) > 0.001) {
                            isGrayscaleFilter = false;
                            break;
                        }
                    }

                    if (isGrayscaleFilter) {
                        filters.remove(filters[i]);
                        widget.backend.filters = filters;
                        break;
                    }
                }
            }
        }
    }

}//class Effects