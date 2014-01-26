require 'yaml'
require 'open-uri'
require 'openssl'
class GithubStreakSavior
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  def self.config
    @config ||= YAML::load(File.open('config.yml'))
    @config
  end


  def self.get_commit_today
    url = "https://github.com/users/#{config['username']}/contributions_calendar_data"
    response = URI.parse(url).read
    contributions = eval(response)
    contributions.last[1]
  end

  def self.has_commited_today?
    get_commit_today > 0
  end

end