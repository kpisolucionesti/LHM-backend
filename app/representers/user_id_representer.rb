class UserIdRepresenter < Representable::Decorator
    include Representable::JSON
    
    property :id
    property :username
    property :password
    property :email
    property :user_id
end