module Enums

  class << self
    def any?(collection, condition)
      any = false
      collection.each do |item|
        break if any
        any = condition.call(item)
      end
      any
    end

    def select(collection, condition)
      selected = []
      collection.each do |item|
        selected << item if condition.call(item)
      end
      selected
    end

    def reduce(collection, condition)
      reduced = []
      collection.each do |item|
        reduced << condition.call(item)
      end
      reduced
    end

    def reject(collection, condition)
      rejected = []
      collection.each do |item|
        rejected << item if condition.call(item)
      end
      rejected
    end
  end
end
