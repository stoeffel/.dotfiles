module.exports = {
  config: {
    // default font size for all tabs
    fontSize: 16,

    // font family with optional fallbacks
    fontFamily: 'Fira Code, Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color (hex)
    cursorColor: '#839496',

    // terminal background color (hex)
    backgroundColor: '#002b36',

    foregroundColor: '#839496',

    // border color (window, tabs)
    borderColor: '#073642',

    // custom css to embed in the main window
    css: `
      .t_tab.t_active:before,
      .tab_tab.tab_active:before {
        border-color: #002b36 !important;
      }
    `,

    // custom css to embed inside each terminal
    termCSS: '',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#073642',
      '#dc322f',
      '#859900',
      '#b58900',
      '#268db2',
      '#d33682',
      '#2aa198',
      '#eee8d5',
      '#002b36',
      '#cb4b16',
      '#586e75',
      '#657b83',
      '#839496',
      '#6c71c4',
      '#93a1a1',
      '#fdf6e3'
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hypersolar`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: ['hypercwd'],

  // in development, you can create a directory under
  // `~/.hyperterm_modules/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
