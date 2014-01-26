require_relative 'github_streak_savior'
require 'openssl'

puts 'Commited: ' + GithubStreakSavior.has_commited_today?.to_s