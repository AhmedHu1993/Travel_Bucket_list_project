fetch('https://restcountries.eu/rest/v2/all')
  .then(res => res.json())
  .then(countries => countries.reduce((hash, country) => {
    hash[country.name] = country.flag
    return hash
  }, {}))
  .then(hash => console.log(JSON.stringify(hash).replace(/":"/g, '"=>"')))
