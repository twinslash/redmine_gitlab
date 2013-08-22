# stub of original Redmine class Setting
class Setting
  def self.plugin_redmine_gitlab
    self[:redmine_gitlab]
  end

  def self.plugin_redmine_gitlab=(value)
    self[:redmine_gitlab] = value
  end

  def self.[]=(name, v)
    setting = setting_stub(name)
    setting.value = (v ? v : "")
    setting.value
  end

  def self.[](name)
    setting_stub(name).value
  end

  private

    def self.setting_stub(name)
      @setting_stub ||= {}
      @setting_stub[name] ||= SettingStub.new
    end

end

class SettingStub
  attr_accessor :value
end
