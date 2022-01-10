defmodule TodoServer do
  @moduledoc """
  Documentation for `TodoServer`.
  """
  def start() do
    GenericServer.start(TodoServer)

    # spawn(TodoServer, :func, [TodoList.new()])
  end

  def init() do
    TodoList.new()
  end

  def add_entry(pid, new_entry) do
    GenericServer.cast(pid, new_entry)
  end

  def entries(pid, key) do
    GenericServer.call(pid, key)
  end

  def handle_cast(current_state, new_entry) do
    TodoList.add(current_state, new_entry)
  end

  def handle_call(current_state, key) do
    TodoList.entries(current_state, key)
  end
end
