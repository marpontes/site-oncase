module ApplicationHelper
  def products_page?
    action_name == 'products'
  end

  def services_page?
    action_name == 'services'
  end

  def content_page?
    action_name == 'content'
  end

  def about_us_page?
    action_name == 'about_us'
  end

  def jobs_page?
    controller_name == 'jobs'
  end

  def banners_page?
    controller_name == 'banners'
  end

  def members_page?
    controller_name == 'members'
  end

  def admin_tech_products_page?
    controller_name == 'tech_products'
  end

  def admin_case_products_page?
    controller_name == 'case_products'
  end

  def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true, 
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true, 
      fenced_code_blocks: true,
      underline: true,
      highlight: true,
      footnotes: true
    }

    extensions = {
      autolink:           true,
      superscript:        true,  
      tables:             true,
      disable_indented_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end
end
