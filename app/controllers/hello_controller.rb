# frozen_string_literal: true

class HelloController < ApplicationController
  def show
    render plain: "Hello"
  end
end
