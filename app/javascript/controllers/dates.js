import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content2"]

  connect() {
    console.log("Hello Im garages")
  }

  display() {
    this.content2Target.
  }
}
