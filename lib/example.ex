defmodule Example do
  @moduledoc """
  Documentation for `Example`.
  """

  def start(_type, _args) do
    IO.puts(Example.hello())
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
