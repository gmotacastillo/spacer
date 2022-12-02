import { Controller } from "@hotwired/stimulus";
import moment from "moment";

// Connects to data-controller="datetoggle"
export default class extends Controller {
  static targets = ["calendar", "form"]


  formatDate(event){
    console.log("heowijeoiwjoej")
    this.formTarget.submit()
  }
  connect() {
      this.calendarTarget.setAttribute(
        "data-date",
        moment(this.calendarTarget.value)
        .format( this.calendarTarget.getAttribute("data-format") )
        )
    }
}
