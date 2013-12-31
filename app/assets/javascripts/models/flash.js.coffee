EmberTester.Flash = Ember.Object.extend
  type: null,
  message: null,
  isAlert: Ember.computed.equal("type", "alert"),
  isSuccess: Ember.computed.equal("type", "success"),
  clear: ->
    @update(null, null)

  update: (type, message) ->
    @set("type", type)
    @set("message", message)

  success: (message) ->
    @update("success", message)

  alert: (message) ->
    @update("alert", message)
