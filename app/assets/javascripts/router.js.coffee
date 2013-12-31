# For more information see: http://emberjs.com/guides/routing/

EmberTester.Router.map ->
  this.resource "posts", ->
    this.resource "post", path: ":post_id"
    this.route "create"

