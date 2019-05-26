defmodule LiveViewExperimentWeb.PageController do
  use LiveViewExperimentWeb, :controller

  def index(conn, _) do
    Phoenix.LiveView.Controller.live_render(conn, LiveViewExperimentWeb.DashboardView,
      session: %{}
    )
  end
end
