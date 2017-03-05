# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :api_blog,
  ecto_repos: [ApiBlog.Repo]

  
  
config :heroku_test_app, HerokuTestApp.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :heroku_test_app, HerokuTestApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  size: 20 # The amount of database connections in the pool

# Configures the endpoint
config :api_blog, ApiBlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cQtYmfdmAQpJn/DxkldePEwT/rfhZGS1ST26MlqeVxZEKP3ECQxNxcW95rstbRiz",
  render_errors: [view: ApiBlog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ApiBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
import_config "../apps/*/config/config.exs"
