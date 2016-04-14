// Need to dock compensation because the width is not accurate
// when dock is hidden
var HIDDEN_DOCK_COMPENSATION = 4

var column = function(x, of, span) {
  x = x - 1;
  span = span || 1;
  return slate.operation('move', {
    x : '(screenSizeX / ' + of + ') * ' + x,
    y : 'screenOriginY',
    width : '(screenSizeX / ' + of + ') * ' + span,
    height : 'screenSizeY'
  });
};


var _1_2 = column(1, 2);
var _2_2 = column(2, 2);
var _1_3 = column(1, 3);
var _2_3 = column(2, 3);
var _3_3 = column(3, 3);

var _1_5_1 = column(1, 5, 1);
var _2_5_2 = column(2, 5, 2);
var _4_5_2 = column(4, 5, 2);

var maximize = slate.operation('move', {
  x : 'screenOriginX - ' + HIDDEN_DOCK_COMPENSATION,
  y : 'screenOriginY',
  width : 'screenSizeX + ' + HIDDEN_DOCK_COMPENSATION,
  height : 'screenSizeY'
})

var center = slate.operation('move', {
  x : 'screenSizeX/10',
  y : 'screenSizeY/10',
  width : 'screenSizeX - (screenSizeX/10) * 2',
  height : 'screenSizeY - (screenSizeY/10) * 2'
})

var hyper = function(key) {
  return key + ':ctrl,alt,cmd,shift';
};

slate.bind(hyper('q'), function (win) {
  win.doOperation(_1_3)
})
slate.bind(hyper('w'), function (win) {
  win.doOperation(_2_3)
})
slate.bind(hyper('e'), function (win) {
  win.doOperation(_3_3)
})
slate.bind(hyper('a'), function (win) {
  win.doOperation(_1_2)
})
slate.bind(hyper('s'), function (win) {
  win.doOperation(_2_2)
})

slate.bind(hyper('f'), function (win) {
  win.doOperation(maximize)
})

slate.bind(hyper('c'), function (win) {
  win.doOperation(center)
})

var dev = slate.layout('dev', {
  'Nylas N1' : {
    'operations' : [_1_5_1],
    'soft-title' : true
  },
  'iTerm2' : {
    'operations' : [_2_5_2],
    'soft-title' : true
  },
  'Google Chrome' : {
    'operations' : [_4_5_2],
    'soft-title' : true
  }
});

slate.bind(hyper('1'), slate.operation("layout", { "name" : dev }));
