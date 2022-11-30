import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="newlot"
export default class extends Controller {
  static targets = ["questionOne", "questionTwo"]

  connect() {
    this.questionOneTarget.hidden = false;
    this.questionTwoTarget.hidden = true
  }

  revealQuestionTwo() {
    this.questionOneTarget.hidden = true;
    this.questionTwoTarget.hidden = false;
  }

}
