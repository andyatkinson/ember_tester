EmberTester.PostsCreateRoute = Ember.Route.extend
  model: ->
    EmberTester.Post.createRecord()
  renderTemplate: ->
    this.render("posts.create")
