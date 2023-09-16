// Entry point for the build script in your package.json
//

// // this "modifies" the jquery module: adding behavior to it
// // the bootstrap module doesn't export/return anything


import "@hotwired/turbo-rails"
require('bootstrap');
import * as bootstrap from 'bootstrap'
window.bootstrap = bootstrap;
// import { Modal } from 'bootstrap'

// import "popper"
import "bootstrap"

import jquery from 'jquery'
window.jQuery = jquery
window.$ = jquery

// window.Modal = Modal;
