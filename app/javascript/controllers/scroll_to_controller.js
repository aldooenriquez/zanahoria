import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["section"];

  scrollToSection(event) {
    event.preventDefault();
    const sectionId = event.currentTarget.hash.substr(1);
    const section = document.getElementById(sectionId);
    section.scrollIntoView({ behavior: "smooth" });
  }
}
