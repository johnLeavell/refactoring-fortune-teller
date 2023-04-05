class FireController < ApplicationController
  include FortuneAndNumbers

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
end
