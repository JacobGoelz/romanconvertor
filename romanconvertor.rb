def fromRoman(romanNumber)
    return result if str.empty?
    roman_mapping.values.each do |roman|
      if str.start_with?(roman)
        result += roman_mapping.invert[roman]
        str = str.slice(roman.length, str.length)
        return toRoman(str, result)
      end
    end
  end
    raise NotImplementedError
end

def toRoman(arabicNumber)
    integer = self
    roman = ""

    while integer > 0
      if @@values[integer]
        roman += @@values[integer]
        return roman
      end

      roman += @@values[next_lower_key(integer)] 
      integer -= next_lower_key(integer) 
    end
  end
    raise NotImplementedError
end