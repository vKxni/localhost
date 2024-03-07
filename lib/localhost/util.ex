defmodule Localhost.Util do
  @moduledoc """
  This module contains utility functions for the Localhost application.
  """
  def start_log() do
    IO.puts("✅ Localhost started at http://localhost:9000/")
  end
end
