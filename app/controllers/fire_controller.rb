class FireController < ApplicationController
  def ram
    horoscope_and_numbers(:aries)
    render({ :template => "flame_templates/aries.html.erb" })
  end

  def lion
    horoscope_and_numbers(:leo)
    render({ :template => "flame_templates/leo.html.erb" })
  end

  def archer
    horoscope_and_numbers(:sagittarius)
    render({ :template => "flame_templates/sagittarius.html.erb" })
  end

  private
  def horoscope_and_numbers(zodiac_key)
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(zodiac_key)
    @horoscope = this_zodiac.fetch(:horoscope)
    @array_of_numbers = Array.new(5) {rand(1..100) }
  end
end
