# == Schema Information
#
# Table name: proxy_votes_collected
#
#  id                :integer          not null, primary key
#  annual_meeting_id :integer
#  building_id       :integer
#  user_id           :integer
#  votes_collected   :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class ProxyVotesCollected < ActiveRecord::Base
end
