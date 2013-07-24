require 'redmine/scm/adapters/gitlab_adapter'

class Repository::Gitlab < Repository

  class << self

    def scm_adapter_class
      Redmine::Scm::Adapters::GitlabAdapter
    end

    def scm_name
      'Gitlab'
    end

  end # end class methods

end
