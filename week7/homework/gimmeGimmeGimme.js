function Human(fullName, age) {
  this.fullName = fullName;
  this.age = age;
}

Human.prototype.sayName = function () {
  console.log("Hi,my name is " + this.fullName);
}
Human.prototype.sayAge = function () {
  console.log("I'm " + this.age);
}

function Developer() {
  this.constructor.call(this, "zannain", 25);
}

Developer.prototype = new Human() 

var dev = new Developer();
dev.sayName();
dev.sayAge();


