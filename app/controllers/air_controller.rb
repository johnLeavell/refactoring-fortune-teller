class AirController < ApplicationController
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
  private
  def horoscope_and_numbers(zodiac_key)
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(zodiac_key)
    @horoscope = this_zodiac.fetch(:horoscope)
    @array_of_numbers = Array.new(5) {rand(1..100) }
  end
end
