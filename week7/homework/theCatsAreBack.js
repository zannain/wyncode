var cat = {
  classification: "mammal",
  species: "cat",
  sound: "my hats off",
  takeOffHat: function () {
    return this.sound;
  }
};

console.log(
  cat.classification === 'mammal' &&
  cat.species === 'cat' &&
  cat.sound === 'my hats off' &&
  cat.takeOffHat() === 'my hats off'
)
