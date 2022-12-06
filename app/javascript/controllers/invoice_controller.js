import { Controller } from "@hotwired/stimulus"

let total = 0
export default class extends Controller {
  static targets = ["spaces", "checkbox", "price"]
  connect() {
    console.log("connected to");
  }

  filterGarage(event){
    const garage_id = event.currentTarget.value
    console.log(this.checkboxTargets);

    this.checkboxTargets.forEach(checkbox => {
      console.log(checkbox.dataset.garageid);
      if(garage_id == checkbox.dataset.garageid){
        checkbox.style.display = "inline-block"
      }else{
        checkbox.style.display = "none"
      }
    })
  }

  previewPrice(event){
    const parking_spot = event.currentTarget
    const parking_price = Number(parking_spot.dataset.price)
    console.log(typeof Number(parking_spot.dataset.price));
    total = total + parking_price
    this.priceTarget.innerHTML = total
    return total
  }

}
