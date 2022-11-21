function person(name, age) {
    this.name = name;
    this.age = age;
    this.changeName = function(name) {
        this.name = name;
    };
}

Person = new person('Sasha', 26);
Person.changeName('Peter');
console.log(Person.name);
