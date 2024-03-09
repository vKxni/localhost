defmodule Localhost.Time do
  use Timex

  @moduledoc """
  Returns my current time in a modified version of RFC1123

  Sat, 09 Mar 2024 20:17:31
  - https://hexdocs.pm/timex/Timex.html#now/1
  - https://hexdocs.pm/elixir/1.12/String.html#replace/4
  """

  def my_time() do
    raw_time = Timex.now("Europe/Berlin")
    formatted_time = Timex.format!(raw_time, "{RFC1123}")
    String.replace(formatted_time, " +0100", "")
  end

  def current_timestamp(), do: DateTime.utc_now() |> DateTime.to_unix()
end
