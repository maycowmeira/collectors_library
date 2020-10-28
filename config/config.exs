# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :grapho,
  ecto_repos: [Grapho.Repo]

# Configures the endpoint
config :grapho, GraphoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sFJcMbiWNMPII82F7gn2Vp74tiFaOYFcSID1NsAYVqKOhzpiIfxdox8tCbr77gq9",
  render_errors: [view: GraphoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Grapho.PubSub,
  live_view: [signing_salt: "YwRHCB76"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
