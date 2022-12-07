import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="newinvoice"
export default class extends Controller {
  static targets = ["questionOne", "questionTwo","newClientForm"]

  connect() {
    console.log("newInvoiceController connected")
    console.log(this.newClientFormTarget)
    this.questionOneTarget.hidden = false;
    this.questionTwoTarget.hidden = true;
  }

  revealQuestionTwo() {
    console.log("hello")
    this.questionOneTarget.hidden = true;
    this.questionTwoTarget.hidden = false;
  }

  showNewClientForm() {
  console.log("reacting to select bar")

   }
  }
