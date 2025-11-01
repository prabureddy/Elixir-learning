defmodule Example do
  @moduledoc """
  Documentation for `Example`.
  """

  alias UUID

  def start(_type, _args) do
    IO.puts(UUID.uuid4())
    Supervisor.start_link([], strategy: :one_for_one)
  end

  @doc """
  Hello world.

  ## Examples

      iex> Example.hello()
      :world

  """
  def hello do
    :world
  end
end
