use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :paymentApi, PaymentApi.Repo,
  username: "sql10394562",
  password: "2HEEvPF66r",
  database: "sql10394562",
  hostname: "sql10.freesqldatabase.com",
  port: 3306,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :paymentApi, PaymentApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
