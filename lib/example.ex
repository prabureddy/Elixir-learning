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
    time = Time.new!(16, 30, 0, 0)
    date = Date.new!(2025, 11, 1)
    dateTime = DateTime.new!(date, time, "Etc/UTC")
    IO.inspect(dateTime)
  end
end
