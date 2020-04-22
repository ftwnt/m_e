class GetPairs
  class << self
    def call(arr, sum)
      res = []

      until arr.empty?
        el = arr.shift
        diff = sum - el
        diff_el_idx = arr.index(diff)
        res << [el, arr.delete_at(diff_el_idx)] if diff_el_idx
      end

      res
    end
  end
end
