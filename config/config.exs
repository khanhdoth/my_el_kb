# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :my_el_kb,
  ecto_repos: [MyElKb.Repo]

# Configures the endpoint
config :my_el_kb, MyElKbWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7dNzj6sVi27z5/MqENtfT+oAy9Li5PBH6Vh/eksdtTiSc6vVFkOFJg28qr/b03h6",
  render_errors: [view: MyElKbWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MyElKb.PubSub,
  live_view: [signing_salt: "82wUxlvJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :my_el_kb, MyElKb.Repo,
  adapter: Ecto.Adapters.Postgres,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
