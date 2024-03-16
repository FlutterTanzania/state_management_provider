class FetchUSCities {

  // The value that will be provided must be a `Future`.
  Future<List<String>> get fetchUSCities {
    // NB: using `Future.delayed` is mocking an HTTP request.
    // imagine that this is something like http.get("http://my_api.com/us_cities");
    final cities  = Future.delayed(const Duration(seconds: 4), () {
      return  [
        'New York City, New York',
        'Los Angeles, California',
        'Chicago, Illinois',
        'Houston, Texas',
        'Phoenix, Arizona',
        'Philadelphia, Pennsylvania',
        'San Antonio, Texas',
        'San Diego, California',
        'Dallas, Texas',
        'San Jose, California',
        'Austin, Texas',
        'Jacksonville, Florida',
        'Fort Worth, Texas',
        'Columbus, Ohio',
        'Charlotte, North Carolina',
        'San Francisco, California',
        'Indianapolis, Indiana',
        'Seattle, Washington',
        'Denver, Colorado',
        'Washington, D.C.',
        'Boston, Massachusetts',
        'El Paso, Texas',
        'Detroit, Michigan',
        'Nashville, Tennessee',
        'Memphis, Tennessee',
        'Portland, Oregon',
        'Oklahoma City, Oklahoma',
        'Las Vegas, Nevada',
        'Louisville, Kentucky',
        'Baltimore, Maryland'
      ];
    });

    return cities;
  }
}