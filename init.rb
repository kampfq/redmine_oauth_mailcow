require 'redmine'
require_dependency 'redmine_oauth_rocketchat/hooks'

Redmine::Plugin.register :redmine_oauth_rocketchat do
  name 'Redmine OAuth Rocket.Chat plugin'
  author 'y-k-m'
  description 'This is a plugin for Redmine registration through Rocket.Chat'
  version '0.0.1'
  url 'https://github.com/y-k-m/redmine_oauth_rocketchat'
  author_url 'https://github.com/y-k-m/'

  settings :default => {
    :site_url => "https://example.rocket.chat",
    :client_id => "",
    :client_secret => "",
    :auth_url => "https://example.rocket.chat/oauth/authorize",
    :token_url => "https://example.rocket.chat/oauth/token",
    :force_account_creation => true,
    :oauth_autentification => false,
  }, :partial => 'settings/oauth_rocketchat_settings'
end
