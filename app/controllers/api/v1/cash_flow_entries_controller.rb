class Api::V1::CashFlowEntriesController < ApplicationController
  def index
    entries = CashFlowEntry.order(date: :asc)
    render json: CashFlowEntrySerializer.new(entries).serializable_hash.to_json
  end
end
