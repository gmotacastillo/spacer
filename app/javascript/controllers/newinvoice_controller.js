import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="newinvoice"
export default class extends Controller {
  static targets = ["questionOne", "questionTwo"]

  connect() {
    this.questionOneTarget.hidden = false;
    this.questionTwoTarget.hidden = true;
    console.log(getDates());
  }

  revealQuestionTwo() {
    console.log("hello")
    this.questionOneTarget.hidden = true;
    this.questionTwoTarget.hidden = false;
  }

  getDates (change) {
    const dates = document.querySelector("#invoice_start_date")
    return dates
  }

}
