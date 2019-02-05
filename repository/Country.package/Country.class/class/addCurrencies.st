as yet unclassified
addCurrencies
  (Smalltalk at: #'Currency')
    ifNotNil: [ :currencyClass | 
      self countryList
        do: [ :eachCountry | 
          (currencyClass getFromCountryName: eachCountry countryName)
            ifNotNil: [ :cur | eachCountry currency: cur ] ] ]