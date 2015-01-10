# == Schema Information
#
# Table name: owner_verifications
#
#  id                 :integer          not null, primary key
#  ch_first_name      :string(255)
#  ch_mi              :string(255)
#  ch_last_name       :string(255)
#  ch_building_number :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class OwnerVerification < ActiveRecord::Base
end
