class ApplicationController < ActionController::Base

  module FortuneAndNumbers
    private

    def horoscope_and_numbers(zodiac_key)
      all_zodiacs = Zodiac.list
      this_zodiac = all_zodiacs.fetch(zodiac_key)
      @horoscope = this_zodiac.fetch(:horoscope)
      @array_of_numbers = Array.new(5) {rand(1..100) }
    end

  end
end
