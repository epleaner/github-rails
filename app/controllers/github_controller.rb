class GithubController < ApplicationController
  def index
    response = JSON.parse(Net::HTTP.get(URI('https://api.github.com/users/vinsonchuong/repos')))
    @repo_names = response.map {|r| r['full_name']}
  end
end