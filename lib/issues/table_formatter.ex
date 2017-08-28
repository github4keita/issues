defmodule TableFormatter do
  def split_into_columns(rows, headers) do
    for header <- headers do
      for row <- rows, do: printtable(row[header])
    end
  end

  def printtable(str) when is_binary(str), do: str
  def printtable(str), do: to_string(str)
end
