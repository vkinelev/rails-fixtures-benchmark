# README

## Compare performance of fixtures vs an inline creation of objects in tests

An app has two very similar models: Artist and Product. The first one is tested
with fixtures, while the second one is tested with objects created right in
the tests with regular ActiveRecord `create!` methods. A test is launched 500 times
for the every model.

To run tests:
```
rails test test/models/artist_test.rb
rails test test/models/product_test.rb
```

A sample output:
```
...
Finished in 0.312112s, 1601.9882 runs/s, 1601.9882 assertions/s.
500 runs, 500 assertions, 0 failures, 0 errors, 0 skips

...
Finished in 1.355958s, 368.7429 runs/s, 368.7429 assertions/s.
500 runs, 500 assertions, 0 failures, 0 errors, 0 skips
```
