module BurnsHelper
  def user_image_display
    if user_signed_in?
      content_tag(:div) do
        gravatar_image_tag(current_user.email, size:64, alt: current_user.name)
      end
    end
  end

  def user_data_display(burn)
    if user_signed_in?
      content_tag(:div, class: 'row') do
        content_tag(:span) do
          burn.user.name
        end
      end +
      content_tag(:div, class: 'row') do
        content_tag(:span) do
          burn.user.username
        end
      end
    end
  end


  # <% if user_signed_in? && current_user.id == burn.user.id %>
  #   <div class="row">
  #     <%= link_to burn, class: "level-item mr-2" do %>
  #       <span class="icon"><i class="fa fa-link" aria-hidden="true"></i></span>
  #     <% end %>

  #     <%= link_to edit_burn_path(burn), class: "level-item mr-2" do %>
  #       <span class="icon"><i class="fa fa-pencil" aria-hidden="true"></i></span>
  #     <% end %>
  #     <%= link_to burn, method: :delete, data: { confirm: "Are you sure you want to delete this burn?" } do %>
  #         <span class="icon mr-2"><i class="fa fa-trash-o" aria-hidden="true"></i></span>
  #     <% end %>
  #   </div>
  # <% end %>
end
