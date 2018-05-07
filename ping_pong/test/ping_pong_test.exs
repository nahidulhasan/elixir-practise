defmodule PingPongTest do
  use ExUnit.Case
  doctest PingPong

  test "it responds to two messages" do
    ping = spawn(Ping, :start, [])
    send(ping, {:pong, self()})
    assert_receive {:ping, ^ping}
    send(ping, {:pong, self()})
    assert_receive {:ping, ^ping}
  end
end
