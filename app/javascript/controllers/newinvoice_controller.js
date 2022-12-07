import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="newinvoice"
export default class extends Controller {
  static targets = ["questionOne", "questionTwo","newClientForm", "changeBlue","changeBlueAlso"]

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
    this.changeBlueTarget.classList.add("text-primary")
    this.changeBlueAlsoTarget.classList.add("text-primary")
  }

  showNewClientForm() {
  console.log("reacting to select bar")

   }

  }
