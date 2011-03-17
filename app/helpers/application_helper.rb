module ApplicationHelper

  #return a title on a per-page basis.
  def title
    base_title = "Portfolio of C"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  # Creates a submit button with the given name with a cancel link
  # Accepts two arguments: Form object and the cancel link name
  def submit_or_cancel(form, name='Cancel')
    form.submit + " or " + link_to(name, 'javascript:history.go(-1);', :class => 'cancel')
  end


end
