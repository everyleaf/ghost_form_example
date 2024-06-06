import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="v1--meetings"
export default class extends Controller {
  connect() {
  }
  changeCategory(event) {
    const category = event.currentTarget.value
    Array.from(document.getElementsByClassName("optional")).forEach((element) => {
      element.style.display = "none"
    })
    Array.from(document.getElementsByClassName(category)).forEach((element) => {
      element.style.display = "block"
    })
  }
}
