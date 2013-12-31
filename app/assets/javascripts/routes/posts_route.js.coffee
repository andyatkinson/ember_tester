EmberTester.PostsRoute = Ember.Route.extend
  model: ->
    return EmberTester.Post.find()

  actions:
    setSuccess: ->
      EmberTester.get("flash").success("This is a success message")

    setAlert: ->
      EmberTester.get("flash").alert("this is an alert message")

    setCleared: ->
      EmberTester.get("flash").clear()
