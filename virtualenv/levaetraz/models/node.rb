require 'active_record'

class Node < ActiveRecord::Base

	belongs_to :map

	validates_presence_of :departure
	validates_presence_of :destination
	validates_presence_of :distanceInKilometers
	
	validates :map_id, uniqueness: {scope: [:departure, :destination]}
end