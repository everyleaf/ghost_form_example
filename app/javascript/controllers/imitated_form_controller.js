import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="imitated-form"
export default class extends Controller {
  static targets = [ "originalForm", "imitatedForm" ]

  connect() {
  }
  submit(event) {
    const formData = new FormData(this.originalFormTarget)
    formData.delete("_method")
    formData.delete("authenticity_token")

    for (const [key, value] of formData.entries()) {
      const imitated_key = "imitated_" + key
      const input = this.imitatedFormTarget.querySelector(`input[name="${imitated_key}"]`)
      if (input) {
        input.value = value;
      }
    }
    this.imitatedFormTarget.requestSubmit()
  }
}
