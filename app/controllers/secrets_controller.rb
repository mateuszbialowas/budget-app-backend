# frozen_string_literal: true

# only for testing routes constrains ip address
class SecretsController < ApplicationController
  def index
    # sleep 5s
    sleep(3)

    redirect_to '/'
  end
end
