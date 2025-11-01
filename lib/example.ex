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
    # date_time = DateTime.new!(Date.new!(2026, 1, 1), Time.new!(0, 0, 0, 0), "Etc/UTC")
    # current_date_time = DateTime.utc_now()
    # current_date_time_diff = DateTime.diff(date_time, current_date_time)
    # IO.puts("Total Seconds" <> " = " <> Integer.to_string(current_date_time_diff))
    # seconds_in_days = 86_400
    # seconds_in_hours = 3_600
    # seconds_in_minutes = 60
    # days = div(current_date_time_diff, seconds_in_days)
    # remaining_seconds = rem(current_date_time_diff, seconds_in_days)
    # hours = div(remaining_seconds, seconds_in_hours)
    # remaining_seconds = rem(remaining_seconds, seconds_in_hours)
    # minutes = div(remaining_seconds, seconds_in_minutes)
    # remaining_seconds = rem(remaining_seconds, seconds_in_minutes)

    # IO.puts(
    #   Integer.to_string(days) <>
    #     " " <>
    #     "days" <>
    #     " " <>
    #     Integer.to_string(hours) <>
    #     " " <>
    #     "hours" <>
    #     " " <>
    #     Integer.to_string(minutes) <>
    #     " " <> "minutes" <> " " <> Integer.to_string(remaining_seconds) <> " " <> "seconds"
    # )

    # memberships = {:bronze, :silver, :gold}
    # prices = {5, 10, 15}
    # avg = Tuple.sum(prices) / tuple_size(prices)

    # IO.puts(
    #   "Average price of #{elem(memberships, 0)}, #{elem(memberships, 1)}, #{elem(memberships, 2)} is #{avg}"
    # )

    memberships = %{
      platinum: :platinum,
      gold: :gold,
      silver: :silver,
      none: :none
    }

    prices = %{
      platinum: 100,
      gold: 90,
      silver: 80,
      none: 0,
    }

    users = [
      {"Moses", memberships.platinum},
      {"Joshua", memberships.gold},
      {"Caleb", memberships.silver}
    ]

    Enum.each(users, fn {name, membership} ->
      IO.puts("#{name} has a #{membership} membership paying #{prices[membership]}$")
    end)
  end
end
