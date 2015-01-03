// myFocus
myFocus.set({
    id:'picBox',//ID
    pattern:'mF_qiyi'//风格
});


// drag img
var drag_point = 0;
const colors = ["#33B5E5","#0099CC","#AA66CC","#9933CC","#99CC00","#669900","#FFBB33","#FF8800","#FF4444","#CC0000"]

function dragImg(event) {
    event.dataTransfer.setData("Text", event.target.id);
}

function dropImg(event) {
    event.preventDefault();
    var data = event.dataTransfer.getData("Text");
    event.target.appendChild(document.getElementById(data));

    drag_point++;
    document.getElementById("drag_hit_id").innerHTML = "";
    var drag_sentence = getSentenceByPoint(drag_point);
    var drag_color = getColorByPoint(drag_point);
    document.getElementById("drag_hit_id").innerHTML = "<br/>" + drag_sentence;
    document.getElementById("drag_hit_id").style.color = drag_color;
}

function allowDrop(event) {
    event.preventDefault();
}

function getSentenceByPoint(drag_point) {
    var sentence = "";
    for(var i = 0; i < drag_point % 10; i++) {
        sentence += "O<br/>";
    }
    return sentence;
}

function getColorByPoint(drag_point) {
    var color = colors[Math.floor(drag_point / 10)];
    return color;
}
