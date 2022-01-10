defmodule TodoList do
  def new() do
    []
  end

  def add(todoList, new_entry) do
    todoList ++ [new_entry]
  end

  def entries(todoList, key) do
    # func = fn result -> send(pid, {:entries, result}) end

    Enum.filter(todoList, fn item ->
      item[:date] == key or item[:title] == key
    end)

    # |> func.()

    # todoList
  end
end
