class String
  define_method(:allergies) do
    aller_hash = {
      1 => 'eggs',
      2 => 'peanuts',
      4 => 'shellfish',
      8 => 'strawberries',
      16 => 'tomatoes',
      32 => 'chocolate',
      64 => 'pollen',
      128 => 'cats'
    }
    aller = aller_hash.keys.reverse
    aller_num = self.to_i
    aller_array = []
    aller.each() do |number|
      if aller_num >= number
        aller_array.push(aller_hash.fetch(number))
        aller_num -= number
      end
    end
    aller_array
  end
end
