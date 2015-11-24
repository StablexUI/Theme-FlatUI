package sx.flatui;

import sx.backend.BitmapData;
import sx.themes.macro.Assets;



/**
 * Theme assets loading for stablexui-flash backend
 *
 */
class Assets
{

#if (!nme && !openfl)
    /** Bitmaps ready for usage */
    static private var loadedBitmaps : Map<String,BitmapData> = new Map();
#end


    /**
     * Returns bitmapData identified by `path`
     */
    static public inline function getBitmapData (path:String) : BitmapData
    {
        #if openfl
            var bmp = openfl.Assets.getBitmapData(path);
        #else
            var bmp = loadedBitmaps.get(path);
        #end

        return (bmp == null ? null : bmp.clone());
    }


    /**
     * Load theme images
     */
    static public function loadBitmaps (onReady:Void->Void) : Void
    {
        #if (openfl || nme)
            onReady();
        #else
            var data;
            data = Assets.bitmapData('../../../assets/flatui/icons/triangle-up.png');
            loadedBitmaps.set('flatui/icons/triangle-up.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/triangle-down.png');
            loadedBitmaps.set('flatui/icons/triangle-down.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/triangle-up-small.png');
            loadedBitmaps.set('flatui/icons/triangle-up-small.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/triangle-down-small.png');
            loadedBitmaps.set('flatui/icons/triangle-down-small.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/triangle-left-large.png');
            loadedBitmaps.set('flatui/icons/triangle-left-large.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/triangle-right-large.png');
            loadedBitmaps.set('flatui/icons/triangle-right-large.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/arrow-left.png');
            loadedBitmaps.set('flatui/icons/arrow-left.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/arrow-right.png');
            loadedBitmaps.set('flatui/icons/arrow-right.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/plus.png');
            loadedBitmaps.set('flatui/icons/plus.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/cross.png');
            loadedBitmaps.set('flatui/icons/cross.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/check.png');
            loadedBitmaps.set('flatui/icons/check.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/radio-unchecked.png');
            loadedBitmaps.set('flatui/icons/radio-unchecked.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/radio-checked.png');
            loadedBitmaps.set('flatui/icons/radio-checked.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/checkbox-unchecked.png');
            loadedBitmaps.set('flatui/icons/checkbox-unchecked.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/checkbox-checked.png');
            loadedBitmaps.set('flatui/icons/checkbox-checked.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/info-circle.png');
            loadedBitmaps.set('flatui/icons/info-circle.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/alert-circle.png');
            loadedBitmaps.set('flatui/icons/alert-circle.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/question-circle.png');
            loadedBitmaps.set('flatui/icons/question-circle.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/check-circle.png');
            loadedBitmaps.set('flatui/icons/check-circle.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/cross-circle.png');
            loadedBitmaps.set('flatui/icons/cross-circle.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/plus-circle.png');
            loadedBitmaps.set('flatui/icons/plus-circle.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/pause.png');
            loadedBitmaps.set('flatui/icons/pause.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/play.png');
            loadedBitmaps.set('flatui/icons/play.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/volume.png');
            loadedBitmaps.set('flatui/icons/volume.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/mute.png');
            loadedBitmaps.set('flatui/icons/mute.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/resize.png');
            loadedBitmaps.set('flatui/icons/resize.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/list.png');
            loadedBitmaps.set('flatui/icons/list.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/list-thumbnailed.png');
            loadedBitmaps.set('flatui/icons/list-thumbnailed.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/list-small-thumbnails.png');
            loadedBitmaps.set('flatui/icons/list-small-thumbnails.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/list-large-thumbnails.png');
            loadedBitmaps.set('flatui/icons/list-large-thumbnails.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/list-numbered.png');
            loadedBitmaps.set('flatui/icons/list-numbered.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/list-columned.png');
            loadedBitmaps.set('flatui/icons/list-columned.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/list-bulleted.png');
            loadedBitmaps.set('flatui/icons/list-bulleted.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/window.png');
            loadedBitmaps.set('flatui/icons/window.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/windows.png');
            loadedBitmaps.set('flatui/icons/windows.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/loop.png');
            loadedBitmaps.set('flatui/icons/loop.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/cmd.png');
            loadedBitmaps.set('flatui/icons/cmd.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/mic.png');
            loadedBitmaps.set('flatui/icons/mic.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/heart.png');
            loadedBitmaps.set('flatui/icons/heart.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/location.png');
            loadedBitmaps.set('flatui/icons/location.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/new.png');
            loadedBitmaps.set('flatui/icons/new.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/video.png');
            loadedBitmaps.set('flatui/icons/video.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/photo.png');
            loadedBitmaps.set('flatui/icons/photo.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/time.png');
            loadedBitmaps.set('flatui/icons/time.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/eye.png');
            loadedBitmaps.set('flatui/icons/eye.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/chat.png');
            loadedBitmaps.set('flatui/icons/chat.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/home.png');
            loadedBitmaps.set('flatui/icons/home.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/upload.png');
            loadedBitmaps.set('flatui/icons/upload.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/search.png');
            loadedBitmaps.set('flatui/icons/search.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/user.png');
            loadedBitmaps.set('flatui/icons/user.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/mail.png');
            loadedBitmaps.set('flatui/icons/mail.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/lock.png');
            loadedBitmaps.set('flatui/icons/lock.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/power.png');
            loadedBitmaps.set('flatui/icons/power.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/calendar.png');
            loadedBitmaps.set('flatui/icons/calendar.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/gear.png');
            loadedBitmaps.set('flatui/icons/gear.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/bookmark.png');
            loadedBitmaps.set('flatui/icons/bookmark.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/exit.png');
            loadedBitmaps.set('flatui/icons/exit.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/trash.png');
            loadedBitmaps.set('flatui/icons/trash.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/folder.png');
            loadedBitmaps.set('flatui/icons/folder.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/bubble.png');
            loadedBitmaps.set('flatui/icons/bubble.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/export.png');
            loadedBitmaps.set('flatui/icons/export.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/calendar-solid.png');
            loadedBitmaps.set('flatui/icons/calendar-solid.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/star.png');
            loadedBitmaps.set('flatui/icons/star.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/star-2.png');
            loadedBitmaps.set('flatui/icons/star-2.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/credit-card.png');
            loadedBitmaps.set('flatui/icons/credit-card.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/clip.png');
            loadedBitmaps.set('flatui/icons/clip.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/link.png');
            loadedBitmaps.set('flatui/icons/link.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/tag.png');
            loadedBitmaps.set('flatui/icons/tag.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/document.png');
            loadedBitmaps.set('flatui/icons/document.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/image.png');
            loadedBitmaps.set('flatui/icons/image.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/facebook.png');
            loadedBitmaps.set('flatui/icons/facebook.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/youtube.png');
            loadedBitmaps.set('flatui/icons/youtube.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/vimeo.png');
            loadedBitmaps.set('flatui/icons/vimeo.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/twitter.png');
            loadedBitmaps.set('flatui/icons/twitter.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/spotify.png');
            loadedBitmaps.set('flatui/icons/spotify.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/skype.png');
            loadedBitmaps.set('flatui/icons/skype.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/pinterest.png');
            loadedBitmaps.set('flatui/icons/pinterest.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/path.png');
            loadedBitmaps.set('flatui/icons/path.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/linkedin.png');
            loadedBitmaps.set('flatui/icons/linkedin.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/google-plus.png');
            loadedBitmaps.set('flatui/icons/google-plus.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/dribbble.png');
            loadedBitmaps.set('flatui/icons/dribbble.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/behance.png');
            loadedBitmaps.set('flatui/icons/behance.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/stumbleupon.png');
            loadedBitmaps.set('flatui/icons/stumbleupon.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/yelp.png');
            loadedBitmaps.set('flatui/icons/yelp.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/wordpress.png');
            loadedBitmaps.set('flatui/icons/wordpress.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/windows-8.png');
            loadedBitmaps.set('flatui/icons/windows-8.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/vine.png');
            loadedBitmaps.set('flatui/icons/vine.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/tumblr.png');
            loadedBitmaps.set('flatui/icons/tumblr.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/paypal.png');
            loadedBitmaps.set('flatui/icons/paypal.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/lastfm.png');
            loadedBitmaps.set('flatui/icons/lastfm.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/instagram.png');
            loadedBitmaps.set('flatui/icons/instagram.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/html5.png');
            loadedBitmaps.set('flatui/icons/html5.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/github.png');
            loadedBitmaps.set('flatui/icons/github.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/foursquare.png');
            loadedBitmaps.set('flatui/icons/foursquare.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/dropbox.png');
            loadedBitmaps.set('flatui/icons/dropbox.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/android.png');
            loadedBitmaps.set('flatui/icons/android.png', data);

            data = Assets.bitmapData('../../../assets/flatui/icons/apple.png');
            loadedBitmaps.set('flatui/icons/apple.png', data);


            onReady();
        #end
    }


}//class Assets