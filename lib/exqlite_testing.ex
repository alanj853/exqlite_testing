defmodule ExqliteTesting do
  @moduledoc """
  ExqliteTesting keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def do_migrations() do
    path_to_migrations = Path.join(["#{:code.priv_dir(:exqlite_testing)}", "repo", "migrations"])
    Ecto.Migrator.run(ExqliteTesting.Repo, path_to_migrations, :up, all: true)
  end

  def show_problem() do
    Ecto.Migrator.migrated_versions(ExqliteTesting.Repo)
  end
end
