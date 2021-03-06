defmodule LiveViewExperimentWeb.DashboardView do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Status</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
      <%= for district <- @districts do %>
        <tr>
          <td><%= district.name %></td>
          <td><%= district.status %></td>
          <td><button phx-click="restart">Restart</button></td>
        </tr>
      <% end %>
      </tbody>
    </table>
    """
  end

  def handle_info(%{payload: payload}, %{assigns: %{districts: districts}} = socket) do
    {:noreply, assign(socket, districts: Enum.concat(districts, [payload]))}
  end

  def mount(_session, socket) do
    LiveViewExperimentWeb.Endpoint.subscribe("districts:sync_state")
    {:ok, assign(socket, districts: [%{name: "Cheeky District", status: "in-sync"}])}
  end
end
