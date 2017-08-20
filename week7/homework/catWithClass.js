var animal = {
  classification: "Please define a value for 'classification'.",
  species: "Please define a value for 'species'.",
  sound: "Please define a value for 'sound'.",
  makeSound: function () {
    return "Please define a function named 'makeSound' on my \"child\".";
  }
}

var cat = Object.create(animal);
cat.species = "cat"
cat.makeSound = function () {
  return "meow";
}

cat.classification = "mammal";
cat.whoAmI = function () {
  return "Hi, I am a " + cat.classification + " called " + cat.species + ".";
}

cat.whoAmI()
// "Hi, I am a mammal called cat."