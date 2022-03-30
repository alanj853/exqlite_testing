defmodule ExqliteTesting.Repo.Migrations.AddWeatherTable do
  use Ecto.Migration

  def change do
    create table("weather") do
      add :temp,    :integer
      timestamps()
    end
  end
end
