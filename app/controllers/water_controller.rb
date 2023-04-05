class WaterController < ApplicationController
  def crab
    horoscope_and_numbers(:cancer)
    render({ :template => "aqua_templates/cancer.html.erb" })
  end

  def scorpion
    horoscope_and_numbers(:scorpio)
    render({ :template => "aqua_templates/scorpio.html.erb" })
  end

  def fish
    horoscope_and_numbers(:pisces)
    render({ :template => "aqua_templates/pisces.html.erb" })
  end
  private
  def horoscope_and_numbers(zodiac_key)
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(zodiac_key)
    @horoscope = this_zodiac.fetch(:horoscope)
    @array_of_numbers = Array.new(5) {rand(1..100) }
  end
end
