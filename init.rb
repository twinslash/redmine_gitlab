require 'redmine'
require 'redmine_gitlab'

Redmine::Plugin.register :redmine_gitlab do
  name 'Redmine Gitlab plugin'
  author '//Twinslash'
  description 'Plugin to connect Redmine and Gitlab'
  version '0.0.1'
  url 'https://github.com/twinslash/redmine_gitlab'
  author_url 'http://twinslash.com'

  settings :default => {},
           :partial => 'settings/redmine_gitlab_settings'
end

Redmine::Scm::Base.add 'Gitlab'
