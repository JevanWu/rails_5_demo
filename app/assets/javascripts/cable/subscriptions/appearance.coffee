App.cable.subscriptions.create { channel: "AppearanceChannel" },
  received: (data) ->
    alert(data)
