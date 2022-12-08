import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quickinvoice"
export default class extends Controller {
  static targets = ["gridElement", "invoiceBtn"]

  connect() {
      console.log("testing17")

      this.gridElementTargets.forEach(e => {if (e.classList.contains("red")) {
        // while (e.firstChild){
          console.log(e.dataset.lastname);
          const lastname = e.dataset.lastname
          const counter = e.dataset.counter
          const email = e.dataset.email
          const endDate = e.dataset.enddate

          e.style.display = "flex"
          e.innerHTML = `<div class="show-grid-title">
                        <div class="space-id"> # ${counter}</div>
                        <div class="space-id-2">
                          <a href="#">${lastname}</a>
                          <p>${endDate}</p>
                        </div>
                        </div>`
        // }
      }})
    }
  }
  // <p>${email}</p>
