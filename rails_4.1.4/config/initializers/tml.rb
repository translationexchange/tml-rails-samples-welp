Tml.configure do |config|
  config.application = {
      token: 'f5f578900616644c9fd7d4584101f68b51a4ca9c402a20e1c34f825c27834d16'
  }

  config.cache = {
    :enabled    => true,
    :adapter    => 'memcache',
    :host       => 'localhost:11211',
    :namespace  => 'welp',
    :version    => 1,
    :timeout    => 3600
  }

  config.logger  = {
    :enabled  => false,
    :path     => "#{Rails.root}/log/tml.log",
    :level    => 'debug'
  }
end