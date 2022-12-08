import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="newinvoice"
export default class extends Controller {
  static targets = ["questionOne", "questionTwo", "newClientForm", "changeBlue", "changeBlueAlso", "inputForm"]

  initialize() {
    if (this.inputFormTarget.value >= 1) {
    this.newClientFormTarget.hidden = true
    } else {
    this.newClientFormTarget.hidden = false
    }
  }
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
    this.changeBlueTarget.classList.add("circle-number")
    this.changeBlueAlsoTarget.classList.add("text-primary")
  }

  showNewClientForm() {
  console.log("reacting to select bar")

   }
  showNewClientFormInvoice() {
    console.log(this.inputFormTarget.value)
    if (this.inputFormTarget.value >= 1) {
    this.newClientFormTarget.hidden = true;
    } else {
    this.newClientFormTarget.hidden = false;
    }
  }
}
