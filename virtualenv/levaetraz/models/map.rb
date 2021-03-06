require 'active_record'

class Map < ActiveRecord::Base

	has_many :nodes, :dependent => :destroy

	validates_presence_of :name
	validates_uniqueness_of :name, :message=>"This name is used in another map already!"

end