package sx.flatui;

import sx.flatui.FlatUITheme;
import sx.themes.macro.Assets;
import sx.widgets.Bmp;
import sx.widgets.ScaleFit;


/**
 * Icons factory
 *
 */
class Icons
{
    /**
     * Description
     */
    static private function __createIcon (assetPath:String, size:Int, color:Int) : ScaleFit
    {
        var bmp = new Bmp();
        bmp.bitmapData = FlatUITheme.getBitmapData(assetPath);
        bmp.smooth = true;

        if (size == -1) size = FlatUITheme.DEFAULT_ICO_SIZE;
        if (color != -1) {
            FlatUITheme.setBmpColor(bmp, color);
        }

        var icon = new ScaleFit();
        icon.width.dip  = size;
        icon.height.dip = size;

        icon.addChild(bmp);

        return icon;
    }


    static public function triangleUp (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/triangle-up.png', size, color);
    static public function triangleDown (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/triangle-down.png', size, color);
    static public function triangleUpSmall (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/triangle-up-small.png', size, color);
    static public function triangleDownSmall (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/triangle-down-small.png', size, color);
    static public function triangleLeftLarge (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/triangle-left-large.png', size, color);
    static public function triangleRightLarge (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/triangle-right-large.png', size, color);
    static public function arrowLeft (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/arrow-left.png', size, color);
    static public function arrowRight (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/arrow-right.png', size, color);
    static public function plus (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/plus.png', size, color);
    static public function cross (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/cross.png', size, color);
    static public function check (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/check.png', size, color);
    static public function radioUnchecked (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/radio-unchecked.png', size, color);
    static public function radioChecked (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/radio-checked.png', size, color);
    static public function checkboxUnchecked (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/checkbox-unchecked.png', size, color);
    static public function checkboxChecked (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/checkbox-checked.png', size, color);
    static public function infoCircle (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/info-circle.png', size, color);
    static public function alertCircle (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/alert-circle.png', size, color);
    static public function questionCircle (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/question-circle.png', size, color);
    static public function checkCircle (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/check-circle.png', size, color);
    static public function crossCircle (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/cross-circle.png', size, color);
    static public function plusCircle (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/plus-circle.png', size, color);
    static public function pause (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/pause.png', size, color);
    static public function play (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/play.png', size, color);
    static public function volume (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/volume.png', size, color);
    static public function mute (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/mute.png', size, color);
    static public function resize (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/resize.png', size, color);
    static public function list (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/list.png', size, color);
    static public function listThumbnailed (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/list-thumbnailed.png', size, color);
    static public function listSmallThumbnails (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/list-small-thumbnails.png', size, color);
    static public function listLargeThumbnails (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/list-large-thumbnails.png', size, color);
    static public function listNumbered (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/list-numbered.png', size, color);
    static public function listColumned (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/list-columned.png', size, color);
    static public function listBulleted (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/list-bulleted.png', size, color);
    static public function window (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/window.png', size, color);
    static public function windows (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/windows.png', size, color);
    static public function loop (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/loop.png', size, color);
    static public function cmd (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/cmd.png', size, color);
    static public function mic (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/mic.png', size, color);
    static public function heart (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/heart.png', size, color);
    static public function location (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/location.png', size, color);
    static public function newIcon (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/new.png', size, color);
    static public function video (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/video.png', size, color);
    static public function photo (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/photo.png', size, color);
    static public function time (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/time.png', size, color);
    static public function eye (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/eye.png', size, color);
    static public function chat (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/chat.png', size, color);
    static public function home (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/home.png', size, color);
    static public function upload (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/upload.png', size, color);
    static public function search (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/search.png', size, color);
    static public function user (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/user.png', size, color);
    static public function mail (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/mail.png', size, color);
    static public function lock (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/lock.png', size, color);
    static public function power (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/power.png', size, color);
    static public function calendar (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/calendar.png', size, color);
    static public function gear (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/gear.png', size, color);
    static public function bookmark (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/bookmark.png', size, color);
    static public function exit (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/exit.png', size, color);
    static public function trash (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/trash.png', size, color);
    static public function folder (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/folder.png', size, color);
    static public function bubble (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/bubble.png', size, color);
    static public function export (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/export.png', size, color);
    static public function calendarSolid (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/calendar-solid.png', size, color);
    static public function star (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/star.png', size, color);
    static public function star2 (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/star-2.png', size, color);
    static public function creditCard (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/credit-card.png', size, color);
    static public function clip (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/clip.png', size, color);
    static public function link (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/link.png', size, color);
    static public function tag (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/tag.png', size, color);
    static public function document (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/document.png', size, color);
    static public function image (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/image.png', size, color);
    static public function facebook (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/facebook.png', size, color);
    static public function youtube (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/youtube.png', size, color);
    static public function vimeo (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/vimeo.png', size, color);
    static public function twitter (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/twitter.png', size, color);
    static public function spotify (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/spotify.png', size, color);
    static public function skype (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/skype.png', size, color);
    static public function pinterest (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/pinterest.png', size, color);
    static public function path (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/path.png', size, color);
    static public function linkedin (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/linkedin.png', size, color);
    static public function googlePlus (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/google-plus.png', size, color);
    static public function dribbble (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/dribbble.png', size, color);
    static public function behance (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/behance.png', size, color);
    static public function stumbleupon (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/stumbleupon.png', size, color);
    static public function yelp (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/yelp.png', size, color);
    static public function wordpress (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/wordpress.png', size, color);
    static public function windows8 (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/windows-8.png', size, color);
    static public function vine (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/vine.png', size, color);
    static public function tumblr (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/tumblr.png', size, color);
    static public function paypal (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/paypal.png', size, color);
    static public function lastfm (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/lastfm.png', size, color);
    static public function instagram (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/instagram.png', size, color);
    static public function html5 (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/html5.png', size, color);
    static public function github (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/github.png', size, color);
    static public function foursquare (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/foursquare.png', size, color);
    static public function dropbox (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/dropbox.png', size, color);
    static public function android (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/android.png', size, color);
    static public function apple (size:Int = -1, color:Int = -1) return __createIcon('assets/flatui/icons/apple.png', size, color);

}//class Icons