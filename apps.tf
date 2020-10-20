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
    BUGSNAG_TOKEN =  var.heroku_staging_bugsnag,
    BUGSNAG_RELEASE_STAGE = var.heroku_staging_bugsnag_release_stage,
    AUTH0_DOMAIN = var.heroku_staging_auth0_domain,
    AUTH0_AUDIENCE = var.heroku_staging_auth0_audience,
    ORIGIN = var.heroku_staging_origin
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
