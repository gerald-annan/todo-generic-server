defmodule TodoGenericServerTest do
  use ExUnit.Case
  doctest TodoGenericServer

  test "greets the world" do
    assert TodoGenericServer.hello() == :world
  end
end
