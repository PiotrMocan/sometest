// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output", "custom"]

  connect() {
    this.num = 0
    this.renderSome()
    this.renderCustom()
  }

  plus(){
    this.num = this.num + 1
    this.renderSome()
  }

  minus(){
    this.num = this.num - 1
    this.renderSome()
  }

  renderSome(){
    this.outputTarget.textContent = `Num is: ${this.num}`
  }

  renderCustom(){
    this.customTarget.textContent = `Custom hello`
  }
}
