module Bar
  class ExampleController < ApplicationController
    def test
      render json: example_params, status: 200
    end

    private

    def example_params
      STDOUT.puts params.to_s
      params.permit(:attr_1, :attr_2)
    end
  end
end
