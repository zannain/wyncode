function Human(fullName, age) {
  this.fullName = fullName;
  this.age = age;
}

Human.prototype.sayName = function () {
  console.log("Hi,my name is " + this.fullName);
}
Human.prototype.sayAge = function() {
  console.log("I'm " + this.age);
}

var myHuman = new Human('zannain',25);
myHuman.sayName();
myHuman.sayAge(); 