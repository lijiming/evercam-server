defmodule EvercamMedia.ErrorView do
  use EvercamMedia.Web, :view

  def render("error.json", %{message: message, status: status}) do
    %{
      errors: %{
        status: status,
        message: message
      }
    }
  end

  def render("404.html", _assigns) do
    "Page not found - 404"
  end

  def render("500.html", _assigns) do
    "Server internal error - 500"
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_, assigns) do
    render "500.html", assigns
  end
end
