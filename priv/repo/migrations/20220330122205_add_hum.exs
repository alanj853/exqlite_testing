defmodule ExqliteTesting.Repo.Migrations.AddHum do
  use Ecto.Migration

  def change do
    alter table("weather") do
      add :hum, :integer
    end

  end
end
