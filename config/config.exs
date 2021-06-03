# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rope_manager,
  ecto_repos: [RopeManager.Repo]

# Configures the endpoint
config :rope_manager, RopeManagerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AqByNC02ZP4kcmkGng3oLKoSMWaaaw7Vzi85ljnIcAQbFmgYgtRogCAk05Z8rwUm",
  render_errors: [view: RopeManagerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: RopeManager.PubSub,
  live_view: [signing_salt: "CxSRQNq4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
