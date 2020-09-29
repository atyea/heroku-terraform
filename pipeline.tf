resource "heroku_pipeline" "pipeline" {
  name = var.heroku_pipeline_name

  owner {
    id   = var.heroku_team_id
    type = "team"
  }
}

resource "heroku_pipeline_coupling" "staging" {
  app      = heroku_app.staging.name
  pipeline = heroku_pipeline.pipeline.id
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app      = heroku_app.production.name
  pipeline = heroku_pipeline.pipeline.id
  stage    = "production"
}
