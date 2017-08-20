var dog = {
  name: "Fido",
  bark: function () {
    console.log("Bow wow");
  }
};

dog.speak = function (message) {
  console.log(this.name + ' says: ' + message);
}

dog.type = "Chihuahua";

dog.growl = function () {
  this.speak("grr");
}

var StBernard = Object.create(dog);
StBernard.name = 'Beethoven';