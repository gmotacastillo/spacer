import { Controller } from "@hotwired/stimulus"

let total = 0
export default class extends Controller {
  static targets = ["spaces", "checkbox", "price", "startDate", "garage"]
  connect() {
    console.log("connected to");
  }

  filterGarage(event){
    const garage_id = event.currentTarget.value
    this.getLots(garage_id)
  }

  previewPrice(event){
    const parking_spot = event.currentTarget
    const parking_price = Number(parking_spot.dataset.price)
    console.log(typeof Number(parking_spot.dataset.price));
    total = total + parking_price
    this.priceTarget.innerHTML = total
    return total
  }

  filterDates(event){
    const garage_id= this.garageTarget.value;
    const range = event.currentTarget.value.replaceAll(/\s/g,'').split("to")
    const first_day = range[0]
    const end_day = range.length == 2 ? range[1] : first_day
    this.getLots(garage_id, first_day, end_day)
  }

  getLots(garage_id, start_date, end_date) {
    const params = {
      garage_id: garage_id,
      start_date: start_date,
      end_date: end_date
    }

    let url = "/parking_spaces?"

    Object.keys(params).forEach(key => {
      if(![null, undefined, ''].includes(params[key])){
        url += `${key}=${params[key]}&`
      }
    })

    fetch(url)
    .then(response => response.text())
    .then(data => {
      this.spacesTarget.innerHTML = data
    }

    )
  }

}
