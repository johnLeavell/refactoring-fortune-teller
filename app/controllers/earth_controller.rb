class EarthController < ApplicationController
  def bull
    horoscope_and_numbers(:taurus)
    render({ :template => "nature_templates/taurus.html.erb" })
  end

  def maiden
    horoscope_and_numbers(:virgo)
    render({ :template => "nature_templates/virgo.html.erb" })
  end

  def goat
    horoscope_and_numbers(:capricorn)
    render({ :template => "nature_templates/capricorn.html.erb" })
  end

  private
  def horoscope_and_numbers(zodiac_key)
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(zodiac_key)
    @horoscope = this_zodiac.fetch(:horoscope)
    @array_of_numbers = Array.new(5) {rand(1..100) }
  end
end
