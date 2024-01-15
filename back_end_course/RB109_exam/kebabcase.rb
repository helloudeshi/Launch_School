def kebabize(string)
    string_array = string.split(/(?=[A-Z])|-|_/)
    downcase_arr = string_array.map {|ele| ele.downcase}
    downcase_arr.join('-')
end


p kebabize('myCamelCasedString') #== 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') #== 'my-camel-has-humps