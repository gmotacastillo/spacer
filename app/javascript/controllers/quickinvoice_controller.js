import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quickinvoice"
export default class extends Controller {
  static targets = ["gridElement", "invoiceBtn"]

  connect() {
      // this.gridElementTargets.forEach(e => {
      //   console.log(e);
      //  })
      console.log("testing13")

      this.gridElementTargets.forEach(e => {if (e.classList.contains("red")) {
        // while (e.firstChild){
          e.innerHTML = ""
        // }
      }})

      // if (this.gridElementTarget.classList.conatins("green")) {
      //   while (this.gridElementTarget.firstChild){
      //     this.gridElementTarget.innerHTML = ""
      //   }
      // }
    }
  }
