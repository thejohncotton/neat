defmodule NeatTest do
  use ExUnit.Case
  doctest Neat

  test "greets the world" do
    assert Neat.hello() == :world
  end
end
