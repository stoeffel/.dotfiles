// Need to dock compensation because the width is not accurate
// when dock is hidden
var HIDDEN_DOCK_COMPENSATION = 4

var column = function({x, ofX, spanX, y, ofY, spanY}) {
  x = x - 1;
  spanX = spanX || 1;
  y = y || 0;
  y = y - 1;
  ofY = ofY || 0;
  spanY = spanY || 0;
  spanY = ofY - spanY;
  return slate.operation('move', {
    x : '(screenSizeX / ' + ofX + ') * ' + x,
    y : '(screenSizeY / ' + ofY + ') * ' + y,
    width : '(screenSizeX / ' + ofX + ') * ' + spanX,
    height : 'screenSizeY - (screenSizeY / ' + ofY + ') * ' + spanY
  });
};


var _1_2 = column({x: 1, ofX: 2});
var _2_2 = column({x: 2, ofX: 2});
var _1_3 = column({x: 1, ofX: 3});
var _2_3 = column({x: 2, ofX: 3});
var _3_3 = column({x: 3, ofX: 3});

var _1_5_x = function (x) { return column({x: 1, ofX: 5, spanX: x}); }
var _2_5_x = function (x) { return column({x: 2, ofX: 5, spanX: x}); }
var _3_5_x = function (x) { return column({x: 3, ofX: 5, spanX: x}); }
var _4_5_x = function (x) { return column({x: 4, ofX: 5, spanX: x}); }
var _5_5_1 = column({x: 5, ofX: 5, spanX: 1});

var _1_5_1_TOP = column({x: 1, ofX: 5, spanX: 1, y: 1, ofY: 3, spanY: 2});
var _1_5_1_BOTTOM = column({x: 1, ofX: 5, spanX: 1, y: 3, ofY: 3, spanY: 1});
var _2_5_2 = column({x: 2, ofX: 5, spanX: 2});
var _4_5_2 = column({x: 4, ofX: 5, spanX: 2});

var maximize = slate.operation('move', {
  x : 'screenOriginX - ' + HIDDEN_DOCK_COMPENSATION,
  y : 'screenOriginY',
  width : 'screenSizeX + ' + HIDDEN_DOCK_COMPENSATION,
  height : 'screenSizeY'
})

var center = slate.operation('move', {
  x : 'screenSizeX/4',
  y : 'screenSizeY/20',
  width : 'screenSizeX - (screenSizeX/4) * 2',
  height : 'screenSizeY - (screenSizeY/20) * 2'
})

var hyper = function(key) {
  return key + ':ctrl,alt,cmd,shift';
};

function bindHyper(key, op) {
  slate.bind(hyper(key), doOp(op));
}
function doOp(op) { return function(win) { return win.doOperation(op) } }
function spanMore(op, max) {
  var i = 0;
  return function(win) {
    i = i + 1;
    if (i > max) i = 1;
    return win.doOperation(op(i))
  }
}

bindHyper('q', _1_3);
bindHyper('w', _2_3);
bindHyper('e', _3_3);
bindHyper('a', _1_2);
bindHyper('s', _2_2);
slate.bind(hyper('1'), spanMore(_1_5_x, 5));
slate.bind(hyper('2'), spanMore(_2_5_x, 4));
slate.bind(hyper('3'), spanMore(_3_5_x, 3));
slate.bind(hyper('4'), spanMore(_4_5_x, 2));
bindHyper('5', _5_5_1);

bindHyper('f', maximize);
bindHyper('c', center);

var dev = slate.layout('dev', {
  'Nylas N1' : {
    'operations' : [_1_5_1_TOP],
    'soft-title' : true
  },
  'iTerm2' : {
    'operations' : [_2_5_2],
    'soft-title' : true
  },
  'Google Chrome' : {
    'operations' : [_4_5_2],
    'soft-title' : true
  },
  'TogglDesktop' : {
    'operations' : [_1_5_1_BOTTOM],
    'soft-title' : true
  }
});

slate.bind(hyper('d'), slate.operation("layout", { "name" : dev }));
