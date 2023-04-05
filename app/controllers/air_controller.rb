class AirController < ApplicationController
  include FortuneAndNumbers
  
  def twins
    horoscope_and_numbers(:gemini)
    render({ :template => "wind_templates/gemini.html.erb" })
  end

  def scales
    horoscope_and_numbers(:libra)
    render({ :template => "wind_templates/libra.html.erb" })
  end

  def waterbearer
    horoscope_and_numbers(:aquarius)
    render({ :template => "wind_templates/aquarius.html.erb" })
  end
end
