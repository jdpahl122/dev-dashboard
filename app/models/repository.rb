class Repository < ApplicationRecord
  has_and_belongs_to_many :members

  def self.my_repos
    client = Octokit::Client.new(:access_token => Rails.application.credentials.github[:access_token])
    client.auto_paginate = true
    client.org_repos("acv-auctions", type: 'private')
  end

end
