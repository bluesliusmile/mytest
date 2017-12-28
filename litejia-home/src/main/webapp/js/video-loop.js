/**
 * Created by oops on 16/4/18.
 */
document.write("<script src='/static/web/js/jquery.color-2.1.2.min.js'><\/script>");

var videoPlaying = 0;

// call like:  changeIndicator("#indicator0", "#indicator1")
function changeIndicator(toHide, toShow) {
    if (toHide == toShow) return;
    $(toShow).stop().animate({'background-color':"transparent"}, 500);
    $(toHide).stop().animate({'background-color':"#fff"}, 500);
}

// call like:  changeVideo("#video0", "#video1")
function changeVideo(toHide, toShow) {
    if (toHide == toShow) return;
    var toShowIdx = parseInt(toShow[toShow.length - 1]);
    var toHideIdx = parseInt(toHide[toHide.length - 1]);
    videoPlaying = toShowIdx;
    $(toHide)[0].pause();
    $(toShow)[0].play();
    $(toShow).stop().css({'opacity':0}).animate({'opacity':1});
    $(toHide).stop().css({'opacity':1}).animate({'opacity':0});
    $("#black").stop().css({'opacity':1}).animate({'opacity':0}, 500);
    changeIndicator("#indicator" + toHideIdx, "#indicator" + toShowIdx);
}

function onPlayOver(idx, cnt) {
    var cur = parseInt(idx);
    var next = (cur + 1) % cnt;
    changeVideo("#video" + cur, "#video" + next);
}

$(document).ready(function() {
    $(".indicator div").click(function(){
        var $id = $(this).attr('id');
        $id = parseInt($id[$id.length - 1]);
        var next = "#video" + $id;
        changeVideo("#video" + videoPlaying, next);
    });
});
