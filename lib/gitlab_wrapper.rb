class GitlabWrapper
  class << self

    private

      def gitlab
        Gitlab.endpoint = endpoint
        Gitlab.private_token = private_token
        Gitlab
      end

      def endpoint
        Setting.redmine_gitlab[:endpoint]
      end

      def private_token
        Setting.redmine_gitlab[:private_token]
      end
  end
end
