/**
 * 2048 游戏 javascript
 * @author by Zerur
 */

var board = new Array();
var score = 0;
var hasConflicted = new Array();
var canLogMessage = true;
//var req;

$(document).ready(function() {
    newgame();
});

function newgame() {
    canLogMessage = true;
    // 初始化棋盘
    init();
    // 生成数字
    generateOneNumber();
    generateOneNumber();
}

function init() {
    for(var i = 0; i < 4; i++) {
        for(var j = 0; j < 4; j++) {
            var grid_cell = $("#grid" + i + "_" + j);
            grid_cell.css('top', getPosTop(i, j));
            grid_cell.css('left', getPosLeft(i, j));
        }
    }

    for(var i = 0; i < 4; i++) {
        board[i] = new Array();
        hasConflicted[i] = new Array();
        for(var j = 0; j < 4; j++) {
            board[i][j] = 0;
            hasConflicted[i][j] = false;
        }
    }

    updateBoardView();

    score = 0;
}

function getPosTop(i, j) {
    return 20 + i * 120;
}

function getPosLeft(i, j) {
    return 20 + j * 120;
}

function updateBoardView() {
    $(".number_cell").remove();

    for(var i = 0; i < 4; i++) {
        for(var j = 0; j < 4; j++) {
            $("#container").append('<div class="number_cell" id="number_cell' + i + '_' + j + '"</div>');
            var this_number_cell = $('#number_cell' + i + '_' + j);

            if(board[i][j] == 0) {
                this_number_cell.css("width", "0px");
                this_number_cell.css("height", "0px");
                this_number_cell.css("top", getPosTop(i, j) + 50);
                this_number_cell.css("left", getPosLeft(i, j) + 50);
            }
            else {
                this_number_cell.css("width", "100px");
                this_number_cell.css("height", "100px");
                this_number_cell.css("top", getPosTop(i, j));
                this_number_cell.css("left", getPosLeft(i, j));
                this_number_cell.css("background-color", getNumberCellColor(board[i][j]));
                this_number_cell.css("color", getNumberCellTextColor(board[i][j]));
                this_number_cell.text(board[i][j]);
                if(board[i][j] > 100) {
                    this_number_cell.css("font-size", 39);
                }
                if(board[i][j] > 1000) {
                    this_number_cell.css("font-size", 32);
                }
            }

            hasConflicted[i][j] = false;
        }
    }
}

function getNumberCellColor(number) {
    switch(number) {
        case 2: return "#eee4da"; break;
        case 4: return "#ede0c8"; break;
        case 8: return "#f2b179"; break;
        case 16: return "#f59563"; break;
        case 32: return "#f67c5f"; break;
        case 64: return "#f65e3b"; break;
        case 128: return "#edcf72"; break;
        case 256: return "#edcc61"; break;
        case 512: return "#9c0"; break;
        case 1024: return "#33b5e5"; break;
        case 2048: return "#09c"; break;
        case 4096: return "#a6c"; break;
        case 8192: return "#93c"; break;
    }
    return "black";
}

function getNumberCellTextColor(number) {
    if(number <= 4)
        return "#776e65"
    return "white";
}

function generateOneNumber() {
    if(noSpace(board))
        return false;
    // 随机一个位置
    var random_x = parseInt(Math.floor(Math.random() * 4));
    var random_y = parseInt(Math.floor(Math.random() * 4));
    while(true) {
        if(board[random_x][random_y] == 0)
            break;
        random_x = parseInt(Math.floor(Math.random() * 4));
        random_y = parseInt(Math.floor(Math.random() * 4));
    }

    // 随机一个数字
    var random_number =  Math.random() < 0.5 ? 2 : 4;
    // 显示数字
    board[random_x][random_y] = random_number;
    showNumberWithAnimation(random_x, random_y, random_number);
    return true;
}

function noSpace(board) {
    for(var i = 0; i < 4; i++) {
        for(var j = 0; j < 4; j++) {
            if(board[i][j] == 0) {
                return false;
            }
        }
    }
    return true;
}

function showNumberWithAnimation(i, j, number) {
    var this_show_number_cell = $('#number_cell' + i + "_" + j);

    this_show_number_cell.css("background-color", getNumberCellColor(number));
    this_show_number_cell.css("color", getNumberCellTextColor(number));
    this_show_number_cell.text(number);

    this_show_number_cell.animate( {
        width: "100px",
        height: "100px",
        top: getPosTop(i, j),
        left:getPosLeft(i, j)
    }, 50);
}

$(document).keydown(function(event) {
    switch(event.keyCode) {
        case 37 : // left
            if(moveLeft()) {
                $('embed').remove();
                $('body').append('<embed src="/2048move.mp3" autostart="true" hidden="true" loop="false">');
                setTimeout("generateOneNumber()", 210);
                setTimeout("isgameover()", 300);
            }
            break;
        case 38 : // up
            if(moveUp()) {
                $('embed').remove();
                $('body').append('<embed src="/2048move.mp3" autostart="true" hidden="true" loop="false">');
                setTimeout("generateOneNumber()", 210);
                setTimeout("isgameover()", 300);
            }
            break;
        case 39 : // right
            if(moveRight()) {
                $('embed').remove();
                $('body').append('<embed src="/2048move.mp3" autostart="true" hidden="true" loop="false">');
                setTimeout("generateOneNumber()", 210);
                setTimeout("isgameover()", 300);
            }
            break;
        case 40 : // down
            if(moveDown()) {
                $('embed').remove();
                $('body').append('<embed src="/2048move.mp3" autostart="true" hidden="true" loop="false">');
                setTimeout("generateOneNumber()", 210);
                setTimeout("isgameover()", 300);
            }
            break;
        default :
            break;
    }
});

function isgameover() {
    if(noSpace(board) && noMove(board)) {
        gameover();
    }
}

function noMove(board) {
    if(canMoveLeft() || canMoveRight() || canMoveUp() || canMoveDown()) {
        return false;
    }
    return true;
}

function gameover() {
    if(canLogMessage == true) {
        var name = window.prompt("Game Over 您的纪录是 : " + score + "   请留下你的尊姓大名 :");
//        req = new XMLHttpRequest();
//        req.open("GET", "2048logging.jsp?name=" + name + "&score=" + score, true);
//        req.onreadystatechange = callBack;
//        req.send();
    }
    canLogMessage = false;
}

//function callBack() {
//    if(req.readyState == 4) {
//        if(req.status == 200) {
//            var key = req.responseText;
//        }
//    }
//}

function showMoveAnimation(from_x, from_y, to_x, to_y) {
    var this_show_number_cell = $('#number_cell' + from_x + '_' + from_y);
    this_show_number_cell.animate( {
        top: getPosTop(to_x, to_y),
        left: getPosLeft(to_x, to_y)
    }, 200);
}

function updateScore(score) {
    $("#score").text(score);
}

// left group
function moveLeft() {
    if(!canMoveLeft()) {
        return false;
    }

    // move left
    for(var i = 0; i < 4; i++) {
        for(var j = 1; j < 4; j++) {
            if(board[i][j] != 0) {
                for(var k = 0; k < j; k++) {
                    if(board[i][k] == 0 && noBlockHorizontal_left(i, k, j, board)) {
                        // move
                        showMoveAnimation(i, j, i, k);
                        board[i][k] = board[i][j];
                        board[i][j] = 0;
                        continue;
                    }
                    else if(board[i][k] == board[i][j] && noBlockHorizontal_left(i, k, j, board) && !hasConflicted[i][k]) {
                        // move add
                        showMoveAnimation(i, j, i, k);
                        board[i][k] += board[i][j];
                        board[i][j] = 0;
                        // add score
                        score += board[i][k];
                        updateScore(score);
                        // can't move if 2 2 4 8
                        hasConflicted[i][k] = true;
                        continue;
                    }
                }
            }
        }
    }
    setTimeout("updateBoardView()", 200);
    return true;
}

function canMoveLeft() {
    // 左边格子有空间 or 左边格子数字和自己相等
    for(var i = 0; i < 4; i++) {
        for(var j = 1; j < 4; j++) {
            if(board[i][j] != 0) {
                if(board[i][j - 1] == 0 || board[i][j] == board[i][j - 1]) {
                    return true;
                }
            }
        }
    }
    return false;
}

function noBlockHorizontal_left(row, col1, col2, board) {
    for(var i = col1 + 1; i < col2; i++) {
        if(board[row][i] != 0) {
            return false;
        }
    }
    return true;
}

// up group
function moveUp() {
    if(!canMoveUp()) {
        return false;
    }

    // move up
    for(var j = 0; j < 4; j++) {
        for(var i = 1; i < 4; i++) {
            if(board[i][j] != 0) {
                for(var k = 0; k < i; k++) {
                    if(board[k][j] == 0 && noBlockVertical_up(j, k, i, board)) {
                        // move
                        showMoveAnimation(i, j, k, j);
                        board[k][j] = board[i][j];
                        board[i][j] = 0;
                        continue;
                    }
                    else if(board[k][j] == board[i][j] && noBlockVertical_up(j, k, i, board) && !hasConflicted[k][j]) {
                        // move add
                        showMoveAnimation(i, j, k, j);
                        board[k][j] += board[i][j];
                        board[i][j] = 0;
                        // add score
                        score += board[k][j];
                        updateScore(score);
                        //
                        hasConflicted[k][j] = true;
                        continue;
                    }
                }
            }
        }
    }
    setTimeout("updateBoardView()", 200);
    return true;
}

function canMoveUp() {
    // 上边格子有空间 or 上边格子数字和自己相等
    for(var j = 0; j < 4; j++) {
        for( var i = 1; i < 4; i++) {
            if(board[i - 1][j] == 0 || board[i][j] == board[i - 1][j]) {
                return true;
            }
        }
    }
    return false;
}

function noBlockVertical_up(col, row1, row2, board) {
    for(var i = row1 + 1; i < row2; i++) {
        if(board[i][col] != 0) {
            return false;
        }
    }
    return true;
}

// right group
function moveRight() {
    if(!canMoveRight()) {
        return false;
    }

    // move right
    for(var i = 0; i < 4; i++) {
        for(var j = 2; j >= 0; j--) {
            if(board[i][j] != 0) {
                for(var k = 3; k > j; k--) {
                    if(board[i][k] == 0 && noBlockVertical_right(i, k, j, board)) {
                        // move
                        showMoveAnimation(i, j, i, k);
                        board[i][k] = board[i][j];
                        board[i][j] = 0;
                        continue;
                    }
                    else if(board[i][k] == board[i][j] && noBlockVertical_right(i, k, j, board) && !hasConflicted[i][k]) {
                        // move add
                        showMoveAnimation(i, j, i, k);
                        board[i][k] += board[i][j];
                        board[i][j] = 0;
                        // add score
                        score += board[i][k];
                        updateScore(score);
                        //
                        hasConflicted[i][k] = true;
                        continue;
                    }
                }
            }
        }
    }
    setTimeout("updateBoardView()", 200);
    return true;
}

function canMoveRight() {
    // 右边格子有空间 or 右边格子数字和自己相等
    for(var i = 0; i < 4; i++) {
        for( var j = 2; j >= 0; j--) {
            if(board[i][j + 1] == 0 || board[i][j] == board[i][j + 1]) {
                return true;
            }
        }
    }
    return false;
}

function noBlockVertical_right(row, col2, col1, board) {
    for(var i = col2 - 1; i > col1; i--) {
        if(board[row][i] != 0) {
            return false;
        }
    }
    return true;
}

// down group
function moveDown() {
    if(!canMoveDown()) {
        return false;
    }

    // move down
    for(var j = 0; j < 4; j++) {
        for(var i = 2; i >= 0; i--) {
            if(board[i][j] != 0) {
                for(var k = 3; k > i; k--) {
                    if(board[k][j] == 0 && noBlockVertical_down(j, k, i, board)) {
                        // move
                        showMoveAnimation(i, j, k, j);
                        board[k][j] = board[i][j];
                        board[i][j] = 0;
                        continue;
                    }
                    else if(board[k][j] == board[i][j] && noBlockVertical_down(j, k, i, board) && !hasConflicted[k][j]) {
                        // move add
                        showMoveAnimation(i, j, k, j);
                        board[k][j] += board[i][j];
                        board[i][j] = 0;
                        // add score
                        score += board[k][j];
                        updateScore(score);
                        //
                        hasConflicted[k][j] = true;
                        continue;
                    }
                }
            }
        }
    }
    setTimeout("updateBoardView()", 200);
    return true;
}

function canMoveDown() {
    // 下边格子有空间 or 下边格子数字和自己相等
    for(var j = 0; j < 4; j++) {
        for( var i = 2; i >= 0; i--) {
            if(board[i + 1][j] == 0 || board[i][j] == board[i + 1][j]) {
                return true;
            }
        }
    }
    return false;
}

function noBlockVertical_down(col, row2, row1, board) {
    for(var i = row2 - 1; i > row1; i--) {
        if(board[i][col] != 0) {
            return false;
        }
    }
    return true;
}