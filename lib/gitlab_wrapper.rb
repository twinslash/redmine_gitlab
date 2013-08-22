class GitlabWrapper
  class << self

    private

      def gitlab
        Gitlab.endpoint = endpoint
        Gitlab.private_token = private_token
        Gitlab
      end

      def endpoint
        Setting.plugin_redmine_gitlab[:endpoint]
      end

      def private_token
        Setting.plugin_redmine_gitlab[:private_token]
      end
  end
end
