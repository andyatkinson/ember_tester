EmberTester.PostsCreateController = Ember.ObjectController.extend
  actions:
    save: ->
      this.store.commit()
      this.transitionToRoute("posts")
