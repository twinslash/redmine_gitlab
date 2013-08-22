module RepositoriesHelper
  def gitlab_field_tags(form, repository)
    content_tag('p', form.text_field(
                       :url, :label => l(:gl_field_repository_name),
                       :size => 60, :required => true
                         ) +
                      '<br />'.html_safe +
                      l(:gl_text_repository_name_note)) +
    content_tag('p', form.text_field(
                       :url, :label => l(:gl_field_repository_namespace),
                       :size => 60, :required => true
                         ) +
                      '<br />'.html_safe +
                      l(:gl_text_repository_namespace_note))
  end

end
