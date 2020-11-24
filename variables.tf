variable "heroku_account_email" { }
variable "heroku_api_key" { }
variable "heroku_pipeline_name" { }
variable "heroku_region" { }
variable "heroku_organization" { }
variable "heroku_team_id" { }
variable "heroku_app_buildpacks" {
  type = list(string)
}

variable "heroku_staging_app" {  }
variable "heroku_staging_database" { }
variable "heroku_staging_scheduler" { }
variable "heroku_staging_bugsnag" { }
variable "heroku_staging_bugsnag_release_stage" { }
variable "heroku_staging_auth0_domain" { }
variable "heroku_staging_auth0_audience" { }
variable "heroku_staging_origin" { }

variable "kounta_staging_client_secret" { }
variable "kounta_staging_client_id" { }
variable "kounta_staging_url" { }
variable "kounta_company_id" { }
variable "kounta_site_id" { }
variable "kounta_signature_token" { }

variable "heroku_production_app" { }
variable "heroku_production_database" { }
