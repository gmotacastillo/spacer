import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content"]

  connect() {
    console.log("Hello Im garages")
  }

  display() {
    this.contentTarget.
  }
}
