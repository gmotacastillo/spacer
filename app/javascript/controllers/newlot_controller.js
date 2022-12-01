import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="newlot"
export default class extends Controller {
  static targets = ["questionOne", "questionTwo", "questionThree"]

  connect() {
    this.questionOneTarget.hidden = false;
    this.questionTwoTarget.hidden = true
    this.questionThreeTarget.hidden = true
  }

  revealQuestionTwo() {
    this.questionOneTarget.hidden = true;
    this.questionTwoTarget.hidden = false;
    this.questionThreeTarget.hidden = true;
  }

  revealQuestionThree(){
    this.questionOneTarget.hidden = true;
    this.questionTwoTarget.hidden = true;
    this.questionThreeTarget.hidden = false;
  }
}
