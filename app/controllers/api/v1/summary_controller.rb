class Api::V1::SummaryController < ApplicationController
  def index
    total_est_cost = ItemLine.sum(:est_cost)
    total_act_cost = ItemLine.sum(:act_cost)
    total_est_revenue = ItemLine.sum(:est_revenue)
    total_act_revenue = ItemLine.sum(:act_revenue)

    render json: {
      total_est_cost:,
      total_act_cost:,
      total_est_revenue:,
      total_act_revenue:
    }
  end
end
