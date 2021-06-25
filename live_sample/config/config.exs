# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_sample,
  ecto_repos: [LiveSample.Repo]

# Configures the endpoint
config :live_sample, LiveSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v+zD5w+gC3SdON+7txkhuctYTo9JgytV8PuIxKklS5afOnhwCRKnvUne4qE+girX",
  render_errors: [view: LiveSampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveSample.PubSub,
  live_view: [signing_salt: "YwF7ap4e"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
