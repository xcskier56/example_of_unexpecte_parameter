module Bar
  class FooController < ApplicationController
    def test
      render json: example_params, status: 200
    end

    private

    def example_params
      params.permit(:attr_1, :attr_2)
    end
  end
end
