workflow "Publish image" {
  on = "release"
  resolves = "Publish"
}

action "Build" {
  uses = "actions/action-builder/docker@master"
  runs = "make"
  args = "build"
}

action "Login" {
  needs = "Build" 
  uses = "actions/docker/login@master"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "Publish" {
  needs = "Login"
  uses = "actions/action-builder/docker@master"
  runs = "make"
  args = "publish"
}

