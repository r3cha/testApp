class Ticket
  include Mongoid::Document
  include SimpleEnum::Mongoid
  include Mongoid::Timestamps

  field :title, type: String
  field :body, type: String

  belongs_to :user, class_name: 'User' 

  as_enum :status, new: 0, taken: 1, closed: 2

  SHOWFIELDS = %w{id title body user status}

end
