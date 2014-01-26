require_relative 'config.yml'

class GithubStreakSavior


  def config
    if @c
  end

  def self.has_commited_today?
    url = "https://github.com/users/#{GSSConfig.USERNAME}/contributions_calendar_data"
    Net::HTTP.get(url)
  end

end