require_relative 'github_streak_savior'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
puts 'Commited: ' + GithubStreakSavior.has_commited_today?.to_s