resource "heroku_app" "staging" {
  name = var.heroku_staging_app
  region = var.heroku_region

  organization {
    name = var.heroku_organization
  }

  config_vars = {
    RAILS_ENV = "production",
    RACK_ENV = "production",
    RAILS_LOG_TO_STDOUT = "enabled",
    RAILS_SERVE_STATIC_FILES = "enabled",
    BUGSNAG_TOKEN = "c6d489f974257f25f6c7a9c585387d4f"
  }

  buildpacks = var.heroku_app_buildpacks
}

resource "heroku_app" "production" {
  name = var.heroku_production_app
  region = var.heroku_region

  organization {
    name = var.heroku_organization
  }

  config_vars = {
    APP_ENV = "production"
  }

  buildpacks = var.heroku_app_buildpacks
}
