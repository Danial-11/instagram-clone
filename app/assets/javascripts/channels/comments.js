  App.cable.subscriptions.create({ channel: "CommentsChannel" }, {
    connected() {
      console.log('Connected to Comments Channel...')
    },

    disconnected() {
      console.log('Disconnected to Comments Channel...')
    },

    received(data) {
      const comment_content = document.getElementById('comment_body');
      comment_content.insertAdjacentHTML("beforebegin", data.html)
     }
  });
