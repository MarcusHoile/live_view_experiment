# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :live_view_experiment, LiveViewExperimentWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ydCW5NtSasAjRi49qAJl3WnWTsy1S2UIN9S1uJvbzpqs3s8RqdHom3YYLIUztzlO",
  render_errors: [view: LiveViewExperimentWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveViewExperiment.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "Jb6oRpPKsmMJcex9Pu2HEObO+RtqOPhoCpE0OfxFNHSRFgz7vOwVnh1Qz4BdY5da"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
