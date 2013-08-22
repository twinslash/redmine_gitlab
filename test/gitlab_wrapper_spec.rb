require 'test_helper'

describe GitlabWrapper do

  let(:object) { GitlabWrapper }

  before do
    Setting.plugin_redmine_gitlab = {
      :private_token => 'private_token',
      :endpoint => 'endpoint'
    }
  end

  context 'read settings' do

    it 'fetches settings without caching' do
      object.send(:private_token).must_equal 'private_token'
      object.send(:endpoint).must_equal 'endpoint'

      Setting.plugin_redmine_gitlab = {:private_token => 'new_private_token', :endpoint => 'new_endpoint'}

      object.send(:private_token).must_equal 'new_private_token'
      object.send(:endpoint).must_equal 'new_endpoint'
    end

  end

  describe '.gitlab' do

    it 'returns Gitlab with correct settings' do
      gitlab = object.send(:gitlab)

      gitlab.must_equal Gitlab
      gitlab.endpoint.must_equal 'endpoint'
      gitlab.private_token.must_equal 'private_token'
    end
  end

end
