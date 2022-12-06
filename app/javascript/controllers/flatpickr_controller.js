import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    console.log("connected flatpickr");
    flatpickr(this.element, {
      altInput: true,
        plugins: [new rangePlugin({
          input: "#invoice_end_date"
        })]
    });
  }

}
