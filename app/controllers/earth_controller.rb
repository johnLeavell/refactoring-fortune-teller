class EarthController < ApplicationController
  include FortuneAndNumbers

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
end
