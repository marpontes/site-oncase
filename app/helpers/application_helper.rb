module ApplicationHelper
  def solutions_page?
    action_name == 'solutions'
  end

  def services_page?
    action_name == 'services'
  end

  def content_page?
    action_name == 'content'
  end
end
