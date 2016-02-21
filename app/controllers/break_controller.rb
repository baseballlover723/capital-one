class BreakController < ApplicationController
  def break
    ENV["NUMB"] = 0.to_s
  end
end
