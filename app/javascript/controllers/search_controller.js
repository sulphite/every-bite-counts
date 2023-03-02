7
import { Controller } from 'stimulus';

export default class extends Controller {
  submit(event) {
    const input = event.target.querySelector('input[type="search"]');
    input.value = 'Find a Donut';
  }
}
