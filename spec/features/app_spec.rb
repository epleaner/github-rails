require 'rails_helper'

RSpec.describe 'Application' do
  it 'shows a list of GitHub repos for the vinsonchuong user' do
    visit '/'
    expect(page).to have_content('project_bootstrap')
    expect(page).to have_content('travis-cron-node')
  end
end