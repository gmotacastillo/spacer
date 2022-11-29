import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["button"]
  connect() {
    console.log("connected")
    console.log(this.element)
  }

  menu(event) {
    //if element has class untoggled then add toggle class
   console.log(event.currentTarget)
  }
  //if element has toggle class then add untoggled class


}
