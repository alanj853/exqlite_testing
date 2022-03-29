import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :exqlite_testing, ExqliteTesting.Repo,
  username: "postgres",
  password: "postgres",
  database: "exqlite_testing_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :exqlite_testing, ExqliteTestingWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "eQ/GhyClAlIPuS0PymZd3VtMCL6R/1MJxMDhdB20NyJh3poMoa4kmYvQU0Y66X9u",
  server: false

# In test we don't send emails.
config :exqlite_testing, ExqliteTesting.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
