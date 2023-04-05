class WaterController < ApplicationController
  include FortuneAndNumbers

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
end
