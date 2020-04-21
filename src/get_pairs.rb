class GetPairs
  class << self
    def call(arr, sum)
      passed = {}

      arr.each_with_object([]) do |el, result|
        diff = sum - el
        result << [diff, el] if passed[diff]
        passed[el] = true
      end
    end
  end
end
