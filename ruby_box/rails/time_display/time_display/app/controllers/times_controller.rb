class TimesController < ApplicationController
  def main
    @time = Time.now.in_time_zone("Central Time (US & Canada)")
  end
end
