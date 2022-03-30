# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ExqliteTesting.Repo.insert!(%ExqliteTesting.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

x = NaiveDateTime.utc_now |> NaiveDateTime.truncate(:second)
ExqliteTesting.Repo.insert!(%ExqliteTesting.Schema{temp: 2, hum: 4, inserted_at: x, updated_at: x})
