require_relative 'apartment'

class Building

  attr_accessor :address, :floors, :apartments

  def initialize(addy, stories)
    @address = addy
    #@apartments = []#has to make new value
    # @floors = Array.new(stories, apartments)
    @floors = Array.new(stories) { Array.new }
  end

  def add(num, apt)
    floors[num-1].push(apt)
  end

  def floor(num)
    puts floors[num-1]
  end

  def collect_rents
    rent = 0
    floors.each { |f| f.each {|r| rent += r.price} }
    rent
  end

  def vacancies?
    space = false
    floors.each do |f|
      f.each do |a|
        if !a.full?
          space = true
        end
      end
    end
    space
  end
end

b1 = Building.new("208 Leonard St", 3)
puts b1.apartments #=> []

a1 = Apartment.new("B", 2, 1)
a2 = Apartment.new("A", 1, 1)
a3 = Apartment.new("A", 1, 1)

# Specifiy the floor and apartment object
b1.add(1, a1)
b1.add(1, a2)
b1.add(2, a3)

b1.floor(1) #=> [<#Apartment:01>, <#Apartment:02>]
b1.floor(2) #=> [<#Apartment:03>]
puts b1.collect_rents

b1 = Building.new("208 Leonard St", 3)
p1 = Tenant.new("Al", "Kirkeby", "male", "January 23, 1949")
a1 = Apartment.new("B", 2, 1)
a1.move_in(p1)
b1.vacancies?
binding.pry


