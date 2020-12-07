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
    ORIGIN_ADDRESSES = var.heroku_staging_origin,
    KOUNTA_URL = var.kounta_url,
    KOUNTA_CLIENT_ID = var.kounta_client_id,
    KOUNTA_CLIENT_SECRET = var.kounta_client_secret,
    KOUNTA_COMPANY_ID = var.kounta_company_id,
    KOUNTA_SITE_ID = var.kounta_site_id,
    KOUNTA_SIGNATURE_TOKEN = var.kounta_signature_token,
    KOUNTA_TYRO_ID = var.kounta_tyro_id,
    TYRO_PUBLIC_KEY = var.tyro_public_key,
    TYRO_SECRET_KEY = var.tyro_secret_key,
    BACKEND_URL = var.staging_backend_url
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
    RAILS_ENV = "production",
    RACK_ENV = "production",
    RAILS_LOG_TO_STDOUT = "enabled",
    RAILS_SERVE_STATIC_FILES = "enabled",
    BUGSNAG_TOKEN =  var.heroku_production_bugsnag,
    BUGSNAG_RELEASE_STAGE = var.heroku_production_bugsnag_release_stage,
    AUTH0_DOMAIN = var.heroku_production_auth0_domain,
    AUTH0_AUDIENCE = var.heroku_production_auth0_audience,
    ORIGIN_ADDRESSES = var.heroku_production_origin,
    KOUNTA_URL = var.kounta_url,
    KOUNTA_CLIENT_ID = var.kounta_client_id,
    KOUNTA_CLIENT_SECRET = var.kounta_client_secret,
    KOUNTA_COMPANY_ID = var.kounta_company_id,
    KOUNTA_SITE_ID = var.kounta_site_id,
    KOUNTA_SIGNATURE_TOKEN = var.kounta_signature_token,
    KOUNTA_TYRO_ID = var.kounta_tyro_id,
    TYRO_PUBLIC_KEY = var.tyro_public_key,
    TYRO_SECRET_KEY = var.tyro_secret_key,
    BACKEND_URL = var.production_backend_url
  }

  buildpacks = var.heroku_app_buildpacks
}
