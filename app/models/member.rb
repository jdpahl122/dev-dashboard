class Member < ApplicationRecord
	has_and_belongs_to_many :repositories

	def self.my_members
    client = Octokit::Client.new(:access_token => Rails.application.credentials.github[:access_token])
    client.auto_paginate = true
    client.team_members(3957081)
  end

end
