module IntercomApp
  class Configuration

    attr_accessor :app_key
    attr_accessor :app_secret
    attr_accessor :oauth_modal
    attr_accessor :webhooks
    attr_accessor :hub_secret
    attr_accessor :callback_hash
    attr_accessor :store_in_session_before_login

    def initialize
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(config)
    @configuration = config
  end

  def self.configure
    yield configuration
  end
end
