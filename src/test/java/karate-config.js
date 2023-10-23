function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  karate.log('PRIMERO');

  if (env === 'pre') {
    karate.log('ENV PRE >>>>>>>>>>>>>');
  } else if (env === 'des') {
    karate.log('ENV DES >>>>>>>>>>>>>');
  }

  var fakestore = 'https://fakestoreapi.com/products';


  var config = {
    env: env,
    myVarName: 'someValue',
    fakestore: fakestore
  }

  return config;
}