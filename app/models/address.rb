class Address < ApplicationRecord
    include Devise::JWT::RevocationStrategies::Address

    self.table_name = 'addresses'
end
