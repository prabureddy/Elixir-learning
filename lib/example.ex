defmodule Example do
  @moduledoc """
  Documentation for `Example`.
  """
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  @doc """
  Hello world.

  ## Examples

      iex> Example.hello()
      :world

  """
  def main do
    name = "Prabu"
    status = Enum.random([:silver, :gold, :platinum])
    if status === :gold or status === :platinum do
      IO.puts("Welcome back, #{name}! As a #{status} member, you have access to exclusive features.")
    else
      IO.puts("Welcome back, #{name}!")
    end
  end
end
