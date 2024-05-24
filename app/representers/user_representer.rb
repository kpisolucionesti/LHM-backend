class UserRepresenter < Representable::Decorator
    include Representable::JSON
    
    property :id
    property :code
    property :firstName
    property :lastName
    property :specialty
    property :category
end