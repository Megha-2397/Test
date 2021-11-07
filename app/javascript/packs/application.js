// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("jquery")
require("bootstrap")
require("popper.js")
require("../custom/custom");
require("jquery-validation");
require("flatpickr");

global.$ = jQuery;
import Swal from 'sweetalert2'
window.Swal = Swal
import 'select2'
import 'bootstrap'
import "../stylesheets/application.scss"