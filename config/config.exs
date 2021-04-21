# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :paymentApi,
  ecto_repos: [PaymentApi.Repo]

# Configures the endpoint
config :paymentApi, PaymentApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HNdHPUyK3Q4WvM7x/aG/9jenS2y+vhL2y0zukwrg0Hx77K9KcvUj+0mPzV8dDY0d",
  render_errors: [view: PaymentApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PaymentApi.PubSub,
  live_view: [signing_salt: "MMUixeUv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
