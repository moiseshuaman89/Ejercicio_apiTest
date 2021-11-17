function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'PRUEBA';
      }
  var config = {
    urlCountryLayer:'https://api.countrylayer.com/v2/'
    }
if(env.toUpperCase() == 'PRUEBA'){
    config.urlCountryLayer= 'https://api.countrylayer.com/v2/';
    karate.log('URL BASE COUNTRY LAYER', config.urlCountryLayer)
}

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}
