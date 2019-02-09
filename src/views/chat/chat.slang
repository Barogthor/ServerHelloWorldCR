.row.justify-content-center
  .col-sm-12.col-md-6
    h2 = t "crystal_chatbox"
    div.chatbox-view id="chatbox-view"
    form.chatbox-form
      div.form-row.align-items-center
        div.col-12
          label.sr-only for="chatbox-message" Type something
          div.input-group.mb-2
            div.input-group-prepend
              button.btn.btn-primary.mb-2 type="submit" id="chatbox-form-submit"
            input.form-control type="text" id="chatbox-message" placeholder="Type something"

