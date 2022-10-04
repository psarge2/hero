class HomeController < ApplicationController
  before_action :common, :only => [:index, :item]
  def common
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_title = Faker::Company.profession
    @corp_title = @corp_title.titleize
    @corp_power = Faker::Company.bs
    @corp_power = @corp_power.titleize

    @rand_num = rand(1..1000)
    @set_number = rand(1..4)
    @bg = rand(1..2)

    #randomly pick our avatar set
    if @set_number == 1
      @set = "set1"
    elsif @set_number == 2
      @set = "set2"
    elsif @set_number == 3
      @set = "set3"
    else
      @set = "set4"
    end

    #randomly pick our background
    if @bg == 1
      @background = "bg1"
    else
      @background = "bg2"
    end

    @avatar = Faker::Avatar.image(@rand_num, "250x250","png", @set, @background)
  end

  def index
  end

  def team
  end

end
