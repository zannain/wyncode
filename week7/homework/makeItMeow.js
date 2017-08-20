var animal = {
  classification: "Please define a value for 'classification'.",
  species: "Please define a value for 'species'.",
  sound: "Please define a value for 'sound'.",
  makeSound: function () {
    return "Please define a function named 'makeSound' on my \"child\".";
  }
}

var cat = Object.create(animal);
cat.sound = "meow";
cat.makeSound = function () {
  return this.sound;
}

cat.sound
// "meow"
cat.makeSound();
// "meow"