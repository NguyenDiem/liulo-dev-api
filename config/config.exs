# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :liulo,
  ecto_repos: [Liulo.Repo]

# Configures the endpoint
config :liulo, LiuloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qKSydQt4zqE4cHZDh1ZTVgy+xGvBifTWg6SwnM7S1Lt9tx3nGJM6I9HBWOQO4wAo",
  render_errors: [view: LiuloWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Liulo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
