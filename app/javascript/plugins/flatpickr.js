import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import { German } from "flatpickr/dist/l10n/de.js"


flatpickr(".datepicker", {
  altInput: true
})

flatpickr(".datepicker-de", {
  altInput: true,
  "locale": "de"
})
