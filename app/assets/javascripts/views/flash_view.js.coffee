EmberTester.FlashView = Ember.View.extend
  templateName: "flash",
  classNames: [ "alert" ],
  classNameBindings: [ "success", "alert" ],
  messageBinding: "model.message",
  alertBinding: "model.isAlert",
  successBinding: "model.isSuccess",
  isEmpty: Ember.computed.empty("message"),

  didInsertElement: ->
    if @get("isEmpty")
      @hide()

  onMessageChange: ( ->
    if @get("isEmpty") then @hide() else @show()
  ).observes("message")

  hide: ->
    this.$().hide()

  show: ->
    this.$().show()

  click: (e) ->
    e.preventDefault()
    @get("model").clear()
