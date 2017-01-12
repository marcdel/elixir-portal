defmodule ElixirPortal do
  defstruct [:left, :right]

  def transfer(left, right, data) do
    for item <- data do
      ElixirPortal.Door.push(left, item)
    end

    %ElixirPortal{left: left, right: right}
  end

  def push_right(portal) do
    case ElixirPortal.Door.pop(portal.left) do
      :error -> :ok
      {:ok, h} -> ElixirPortal.Door.push(portal.right, h)
    end

    portal
  end
end
