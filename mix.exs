defmodule ExqliteTesting.MixProject do
  use Mix.Project

  def project do
    [
      app: :exqlite_testing,
      version: "0.1.0",
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {ExqliteTesting.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [


      # official remote deps
      {:exqlite, "~> 0.10.2"},
      {:ecto_sqlite3, "~> 0.7.4"},
      {:ecto_sql, "~> 3.7"},
      {:ecto, "~> 3.7"},

      # local copies
      # {:exqlite, path: "/home/user/src/exqlite", override: true},
      # {:ecto_sqlite3, path: "/home/user/src/ecto_sqlite3", override: true},
      # {:db_connection, path: "/home/user/src/db_connection", override: true},
      # {:ecto, path: "/home/user/src/ecto", override: true},
      # {:ecto_sql, path: "/home/user/src/ecto_sql", override: true},
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get", "ecto.setup"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"],
      "assets.deploy": ["esbuild default --minify", "phx.digest"]
    ]
  end
end
