require 'rubygems'
require 'nokogiri'
require 'open-uri'

require 'pry'

class Animal
  attr_accessor :name, :kingdom, :phylum, :klass, :order, :family, :genus, :species

  @@all = []

  # Hooks
  # Default Constructor
  def initialize
    @@all << self
  end

  # self.all - Class Method, class Getter
  def self.all
    @@all
  end

  # Class finder
  def self.find_by_name(name)
      self.all.detect { |a| a.name == name}
  end

  def self.new_from_database(row)
    Animal.new.tap do |animal|
      # get the object as a block level variable (eg. Animal.new) and whatever is tapped is the return value (stored as |animal|)
      # Do Something
    end
  end

  # Constructor - customer constructor
  # Close for modification but Open to extention
  def self.new_from_wikipedia(url)
    Animal.new.tap do |animal|
      AnimalScraper.wikipedia(url).each do |k,v|
        animal.send("#{k}=", v)
      end
    end
    # animal = Animal.new
    #
    # properties = AnimalScraper.wikipedia(url)
    # # {:name => "Hippo", :klass => "scary animal"}
    # properties.each do |k, v|
    #   # k = name
    #   # v= "Hippo"
    #   # animal.k = v
    #   animal.send("#{k}=", v) # Mass Assignment
    # end
    #  animal
  end
end
