import { Controller } from "@hotwired/stimulus"
import { left } from "@popperjs/core"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["menu", "menutoggled", "page"]
  initialize () {
    this.isToggled = true
  }
  connect() {
    console.log("connected")
    console.log(this.element)

  }

  menu() {
    // missing function: if menu collapsed then right div bigger (visversa)
   console.log("you clicked the button")
   console.log(this.menuTarget)
   console.log(this.pageTarget)
   if (this.isToggled) {

    this.menuTarget.style.display = "none"
    this.menutoggledTarget.style.display = "block"
    //this.pageTarget.style= margin..
    this.pageTarget.style.marginLeft = "100px";

  } else {

    this.menuTarget.style.display = "block"
    this.menutoggledTarget.style.display = "none"
    //this.pageTarget.style= margin..
    this.pageTarget.style.marginLeft = "250px";

   }
  this.isToggled = !this.isToggled
  }

  //if element has toggle class then add untoggled class
  //show () {
  //  this.menu.style.display = "block"
  //}
  //hide () {
  //  this.menu.style.display = "none"
  //}

}
