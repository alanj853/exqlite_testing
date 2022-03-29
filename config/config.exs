# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :exqlite_testing,
  ecto_repos: [ExqliteTesting.Repo]

# Configure your database
db_timeout = :infinity
db_dir = System.get_env("DB_DIR") || "_system/"

config :exqlite_testing, ExqliteTesting.Repo,
  reindex: false,
  pool_size: 1,
  timeout: db_timeout,
  ownership_timeout: db_timeout,
  journal_mode: :wal,
  database: "#{db_dir}/my_db.sqlite3",
  ## hours
  reindex_interval: 12

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
