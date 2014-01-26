require 'yaml'
require 'open-uri'

class GithubStreakSavior


  def self.config
    @config ||= YAML::load(File.open('config.yml'))
    @config
  end


  def self.get_commit_today
    url = "https://github.com/users/#{config['username']}/contributions_calendar_data"
    puts url
    response = URI.parse(url).read
    contributions = eval(response)
    contributions.last[1]
  end

  def self.has_commited_today?
    get_commit_today > 0
  end

end