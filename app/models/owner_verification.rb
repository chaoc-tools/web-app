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
  VALID_BUILDING_NUMBERS = [195,201,325,345,361,365]
   VALID_PROPERTY_ADDRESSES = [
    "325 CLINTON AVE",
    "345 CLINTON AVE",
    "355 CLINTON AVE",
    "361 CLINTON AVE",
    "365 CLINTON AVE"
  ]

  validates :ch_first_name, :presence => true
  validates :ch_last_name, :presence => true
  validates :ch_building_number, :presence => true, :numericality => {:only_integer => true}, :length => {:is => 3}, :inclusion => {:in => VALID_BUILDING_NUMBERS }


  SEARCH_FORM = "https://a836-acris.nyc.gov/DS/DocumentSearch/PartyName"

  

 
end
