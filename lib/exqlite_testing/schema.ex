defmodule ExqliteTesting.Schema do
    use Ecto.Schema
    import Ecto.Changeset

    schema "weather" do
        field :temp, :integer
        field :hum, :integer
        field :inserted_at, :naive_datetime
        field :updated_at, :naive_datetime 
    end

    @doc """
    Creates a changeset based on the `model` and `params`.
    If no params are provided, an invalid changeset is returned
    with no validation performed.
    """
    def changeset(model, params \\ %{}) do
        model
        |> cast(params, [:temp, :hum])
    end
end