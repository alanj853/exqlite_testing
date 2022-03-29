defmodule ExqliteTesting.Repo do
  use Ecto.Repo,
    otp_app: :exqlite_testing,
    adapter: Ecto.Adapters.Postgres
end
