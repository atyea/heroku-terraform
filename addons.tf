resource "heroku_addon" "staging" {
  app = heroku_app.staging.name
  plan = var.heroku_staging_database
}

resource "heroku_addon" "scheduler" {
  app = heroku_app.staging.name
  plan = var.heroku_staging_scheduler
}

resource "heroku_addon" "prod-database" {
  app = heroku_app.production.name
  plan = var.heroku_production_database
}

resource "heroku_addon" "prod-scheduler" {
  app = heroku_app.production.name
  plan = var.heroku_staging_scheduler
}
