# Week 5 (One on One):

__Note:__ All of this code should exist in the same file. Let's call it, `1_on_1.rb`

## Problem 1

Create an `Array` with 4 `String`s: north, east, south, west. Store that `Array` in a _variable_ named `directions`. When you run `p directions[3]`, you should see the `String` `"west"`.

----

## Problem 2

Create a `Hash` with 4 _keys_ (n, e, s, w) and 4 corresponding `String` _values_ (north, east, south, west). Store that `Hash` in a _variable_ named `compass`. When you run `p compass[:n]`, you should get back the `String` `"north"`.

----

## Problem 3

**a)** Create a class called `Direction` that when initialized, takes an `abbreviation` and `direction_name` and makes them publicly available. I should be able to use them like this: 
```ruby
d = Direction.new("n", "North")
p d.direction_name # returns "North"
```

**b)** Now create a class called `Compass` that when instantiated creates an instance variable called `directions` that is an array of `Direction` objects for north, east, south, & west. 

**c)** Store an instance of this compass in a variable called `my_compass`. The instance variable `directions` should be write protected, as in, I should not be able to publicly change the value of `directions`.

```rb
p my_compass.directions      # should work
my_compass.directions = []   # should not work
```

----

## Problem 4

Let's get a Sinatra server running. Please put a Sinatra server in this file (inside `1_on_1.rb`). When I make a `GET` request to the root path, it should respond with `test`.

__Hint:__ `require` is your friend. 

----

## Problem 5

Now let's combine our classes (`Direction` and `Compass`) with our Sinatra server. Since they're in the same file (`1_on_1.rb`), you can use your classes inside your Sinatra `get` block. Try it for yourself.

When you've got the hang of referring to your classes inside a Sinatra block, check the end of the [Sinatra Routes documentation](http://www.sinatrarb.com/intro.html#Routes). 

* When you visit [http://localhost:4567/?direction=n](http://localhost:4567/?direction=n), your server should respond with `The direction corresponding to n is North`.
* When you visit [http://localhost:4567/?direction=w](http://localhost:4567/?direction=w), your server should respond with `The direction corresponding to w is West`.
* and so on...

In the URL `http://localhost:4567/?direction=n`, the `direction=n` part is called the _query string_. Find out how to extract the _query parameters_ using the Sinatra routing system.

### Bonus
_Defensive web programming_: your server should respond normally for invalid directions like `7` or `null`.
