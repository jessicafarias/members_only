module BurnsHelper
  def user_image_display
    return unless user_signed_in?

    content_tag(:div) do
      gravatar_image_tag(current_user.email, size: 64, alt: current_user.name)
    end
  end

  def user_data_display(burn)
    return unless user_signed_in?

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

  def user_link_display(burn)
    return unless user_signed_in? && current_user.id == burn.user.id

    content_tag(:div, class: 'row') do
      content_tag(:span) do
        link_to burn, class: 'level-item mr-2' do
          content_tag(:i, class: 'fa fa-link') do
          end
        end
      end +
        content_tag(:span) do
          link_to edit_burn_path(burn), class: 'level-item mr-2' do
            content_tag(:i, class: 'fa fa-pencil') do
            end
          end
        end +
        content_tag(:span, class: 'icon mr-2') do
          link_to burn, method: :delete, data: { confirm: 'Are you sure you want to delete this burn?' } do
            content_tag(:i, class: 'fa fa-trash-o') do
            end
          end
        end
    end
  end

  def render_trends
    if user_signed_in?
      render 'profile'
    else
      render 'trends'
    end
  end
end
