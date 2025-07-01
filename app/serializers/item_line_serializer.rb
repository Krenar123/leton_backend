class ItemLineSerializer
  include JSONAPI::Serializer

  attributes :id, :name, :created_at, :updated_at

  attribute :est_cost do |obj|
    obj.est_cost.to_f
  end

  attribute :act_cost do |obj|
    obj.act_cost.to_f
  end

  attribute :est_revenue do |obj|
    obj.est_revenue.to_f
  end

  attribute :act_revenue do |obj|
    obj.act_revenue.to_f
  end

  attribute :total_profit do |obj|
    obj.total_profit.to_f
  end

  attribute :profit_percentage do |obj|
    obj.profit_percentage.to_f
  end
end
