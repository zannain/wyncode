function Dog(name) {
  this.name = name;
}
Dog.prototype.bark = function () {
    console.log("Bow Wow!");
}
Dog.prototype.speak = function (message) {
  console.log(this.name + ' says:' + message);
}