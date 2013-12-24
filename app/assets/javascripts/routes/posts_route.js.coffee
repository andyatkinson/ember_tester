EmberTester.PostsRoute = Ember.Route.extend
  model: ->
    return EmberTester.Post.find()
