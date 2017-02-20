# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :presence_phoenix,
  ecto_repos: [PresencePhoenix.Repo]

# Configures the endpoint
config :presence_phoenix, PresencePhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J75vBIjYAasa1BBgC4eyVfRvlo+PETdmjo5U6UdcHTiRG5B1WO6uw5NkT47ou+2v",
  render_errors: [view: PresencePhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PresencePhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
