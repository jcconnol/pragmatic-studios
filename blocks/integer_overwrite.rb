
# times method is in the enumerable class which is a parent of the built in integer class
class Integer
    def n_times
        i = 0
        while i < self
            yield i
            i += 1
        end
    end
end

12.n_times { |n| puts "#{n} Echo!" }