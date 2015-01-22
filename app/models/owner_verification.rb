p# == Schema Information
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
  validates :ch_first_name, :presence => true
  # validates :ch_first_name, , :presence => true
  
  # :length => { :in => 0..255 }, :allow_nil => false
  # # validates_length_of :ch_bulding_number, :minimum => 3, :maximum => 3
  # validates :ch_bulding_number, :numericality => {:only_integer => true}, :presence => true

  SEARCH_FORM = "https://a836-acris.nyc.gov/DS/DocumentSearch/PartyName"

  VALID_PROPERTY_ADDRESSES = [
    "325 CLINTON AVE",
    "345 CLINTON AVE",
    "355 CLINTON AVE",
    "361 CLINTON AVE",
    "365 CLINTON AVE"
  ]
end
