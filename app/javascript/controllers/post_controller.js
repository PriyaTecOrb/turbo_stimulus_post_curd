import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="post"
export default class extends Controller {
  connect() {
    console.log("lkjfljf")
  }

  delete(event){
    
    const id = event.target.dataset.id;
    const csrfToken = document.querySelector("[name='csrf-token']").content
    fetch(`/posts/${id}`,{
      method: 'DELETE',
      mode: 'cors', // no-cors, *cors, same-origin
      cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
      credentials: 'same-origin', // include, *same-origin, omit
      headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': csrfToken
      }
    })
    .then(response => response.json())
    .then(data => {
        const postElement = document.querySelector(`#post_${id}`);
        if (postElement) {
          postElement.remove();
        }
    });
  }

}
