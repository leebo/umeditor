module UmeditorHelper
  def umeditor_assets(opts={})
    html = []
    html << stylesheet_link_tag('umeditor/application', media: 'all', 'data-turbolinks-track' => true)
    html << javascript_include_tag('umeditor/application', 'data-turbolinks-track' => true)
    raw html.join()
  end
end