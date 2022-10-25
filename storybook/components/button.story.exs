defmodule Storybook.Components.Button do
  # See https://hexdocs.pm/phx_live_storybook/PhxLiveStorybook.Story.html for full story
  # documentation.
  # Read https://hexdocs.pm/phx_live_storybook/components.html for more advanced options.

  use PhxLiveStorybook.Story, :component

  def function, do: &StorybookDemoWeb.Components.Button.my_button/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{
          label: "Hello World"
        }
      },
      %VariationGroup{
        id: :colors,
        variations:
          for color <- ~w(default indigo red orange)a do
            %Variation{
              id: color,
              attributes: %{
                label: "color",
                color: color
              }
            }
          end
      }
    ]
  end
end
