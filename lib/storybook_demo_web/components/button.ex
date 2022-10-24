defmodule StorybookDemoWeb.Components.Button do
  use StorybookDemoWeb, :component

  attr :label, :string, required: true, doc: "Button label"

  attr :color, :atom,
    default: :default,
    values: ~w(default indigo red orange)a,
    doc: "Button color"

  attr :"phx-click", :string, doc: "Event triggered on phx-click"

  @doc """
  A simple button. When clicked, triggers a `boom` event.
  """
  def my_button(assigns) do
    ~H"""
    <button type="button" phx-click={assigns[:"phx-click"]}
      class={[
        color(@color),
        "inline-flex items-center px-2.5 py-1.5",
        "text-xs font-medium",
        "border border-transparent rounded shadow-sm",
        "focus:outline-none focus:ring-2 focus:ring-offset-2"
      ]}
    >
      <%= @label %>
    </button>
    """
  end

  defp color(:default), do: "bg-gray-200 hover:bg-gray-300 focus:ring-gray-100 text-gray-900"
  defp color(:indigo), do: "bg-indigo-600 hover:bg-indigo-700 focus:ring-indigo-500 text-white"
  defp color(:red), do: "bg-red-600 hover:bg-red-700 focus:ring-indigo-500 text-white"
  defp color(:orange), do: "bg-orange-600 hover:bg-orange-700 focus:ring-orange-500 text-white"
end
