  App.cable.subscriptions.create({ channel: "CommentsChannel" }, {
    connected() {
      console.log('Connected to Comments Channel...')
    },

    disconnected() {
      console.log('Disconnected to Comments Channel...')
    },

    received(data) {
      document.getElementById('comment_body').append(data.html);
     }
  });
