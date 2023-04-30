// Entry point for the build script in your package.json

const $ = require('jquery');
// this "modifies" the jquery module: adding behavior to it
// the bootstrap module doesn't export/return anything
require('bootstrap');

import * as bootstrap from 'bootstrap'
import { Modal } from 'bootstrap'

window.$ = $;
window.bootstrap = bootstrap;
window.Modal = Modal;
