defmodule Delivery.Users.Create do
  alias Delivery.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %User{}} = result), do: result

  defp handle_insert({:error, reason}) do
    {:error, %{status: :bad_request, reason: reason}}
  end
end
