class Student {
    constructor(name, grade) {
        this.name = name;
        this.grade = grade;
    }
}

class Popsicle {
    constructor (stickers, flavor, student) {
        this.stickers = stickers;
        this.flavor = flavor;
        this.creator = student; 
    }

    eat () {
        console.log('YUM'); 
    }
    add_sticker (stickerName) {
        this.stickers.push(stickerName);
    }
    count_stickers () {
        return this.stickers.length;
    }
}

const student = new Student("Charlie", "kindergarten");

const stickers = [ 'bat-man-sticker', 'apple-sticker', 'sparkle-sticker'];

const flavor = 'Apple';

const popsicle = new Popsicle(stickers, flavor, student);

// count all the stickers
console.log(popsicle.stickers);
console.log(popsicle.count_stickers());

// add a sticker
popsicle.add_sticker("awesome sticker");

console.log(popsicle.stickers);
console.log(popsicle.count_stickers());

console.log(popsicle.stickers.sort());

popsicle.eat();
