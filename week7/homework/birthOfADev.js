class Human {
  constructor(fullName, age) {
    this.fullName = fullName;
    this.age = age;
  }
  sayName() {
    console.log("Hi,my name is " + this.fullName);
  }
  sayAge() {
    console.log("I'm " + this.age);
  }
}

var Developer = new Human();


var zannain = Object.create(Developer);
// undefined
zannain.fullName = 'Zannain';
// "Zannain"
zannain.age = 24;
// 24
zannain.sayAge();
// I'm 24
zannain.sayName();
// Hi, my name is Zannain