class CashFlowEntrySerializer
  include JSONAPI::Serializer
  attributes :id, :amount, :direction, :date, :created_at, :updated_at 
end
