class Api::V1::ItemLinesController < ApplicationController
  def index
    items = ItemLine.all.order(created_at: :desc)
    puts
    puts items
    puts
    render json: ItemLineSerializer.new(items).serializable_hash.to_json
  end
end
