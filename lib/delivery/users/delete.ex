defmodule Delivery.Users.Delete do
  alias Delivery.{Repo, User}
  alias Ecto.UUID

  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, %{status: :bad_request, reason: "Invalid id format"}}
      {:ok, uuid} -> delete(uuid)
    end
  end

  defp delete(id) do
    case Repo.get(User, id) do
      nil -> {:error, %{status: :not_found, reason: "User not found"}}
      user -> Repo.delete(user)
    end
  end
end
