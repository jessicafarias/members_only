module ApplicationHelper
  def login_helper
    if user_signed_in?
      content_tag(:p) do
        link_to current_user.name, edit_user_registration_path, class: 'button is-info ml-3 mr-3'
      end +
        content_tag(:p) do
          link_to 'Logout', destroy_user_session_path, method: :delete, class: 'button is-info ml-3 mr-3'
        end
    else
      content_tag(:p) do
        link_to 'Sign In', new_user_session_path, class: 'button is-info ml-3 mr-3'
      end +
        content_tag(:p) do
          link_to 'Sign Up', new_user_registration_path, class: 'button is-info ml-3 mr-3'
        end
    end
  end

  def display_propper_flash
    if flash[:alert]
      content_tag(:div, flash[:alert], class: 'alert alert-danger', align: 'center')
    elsif flash[:notice]
      content_tag(:div, flash[:notice], class: ' alert alert-primary', align: 'center')
    elsif flash[:danger]
      content_tag(:div, flash[:danger], class: 'flash danger', align: 'center')
    end
  end
end
