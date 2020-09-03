module ApplicationHelper
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
