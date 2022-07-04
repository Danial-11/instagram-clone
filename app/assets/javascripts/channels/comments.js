
  App.cable.subscriptions.create({ channel: "CommentsChannel" }, {
    connected() {
      console.log('Connected to Comments Channel...')
    },

    disconnected() {
      console.log('Disconnected to Comments Channel...')
    },

    received(data) {
      if (data.action === "append"){
        $(`#comment-form-post-${data.post_id}`).prepend(data.html)
      }
      else if (data.action === "delete"){
        $(`#comment-body-${data.comment_id}`)[0].remove()
      }
      else if(data.action === "edit"){
        $(`#comment-form-post-${data.post_id}`).replaceWith(data.html)
      }
    }
  });
