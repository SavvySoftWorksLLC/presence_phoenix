defmodule PresencePhoenix.MyChannel do
  use PresencePhoenix.Web, :channel
  alias PresencePhoenix.Presence

  def join("some:topic", _params, socket) do
    send(self, :after_join)
    {:ok, assign(socket, :user_id, ...)}
  end

  def handle_info(:after_join, socket) do
    push socket, "presence_state", Presence.list(socket)
    {:ok, _} = Presence.track(socket, socket.assigns.user_id, %{
      online_at: inspect(System.system_time(:seconds))
    })
    {:noreply, socket}
  end
end