class HelloController < ApplicationController
  def index
    raise TypeError
    render plain: "hello"
  end
end
