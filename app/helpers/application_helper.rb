module ApplicationHelper
  def solutions_page?
    action_name == 'solutions'
  end
end
