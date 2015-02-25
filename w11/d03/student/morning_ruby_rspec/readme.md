# This is a test!

![:image](http://blog.schwern.net/images/Derpy_Please_Stand_By_blog.jpeg)

Today we're going to work on passing tests in Ruby with [Rspec](http://www.relishapp.com/rspec/).

## Water Bottle

Work first in water_bottle

The file structure is similar to what we worked on yesterday with Jasmine

```
.
├── lib
│   └── water_bottle.rb
├── spec
│   ├── spec_helper.rb
│   └── water_bottle_spec.rb
├── .rspec
└── readme.md
```

Write your code in `lib/water_bottle.rb` to make the tests in `spec/water_bottle_spec.rb` pass.

You run your rspec tests with the `rspec` command and specify the folder where your tests are.

For example to run the water_bottle specs from inside the `water_bottle` folder you'd run:

```sh
$ rspec spec/
```
