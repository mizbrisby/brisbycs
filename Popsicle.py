class Student:
    def __init__(self, name, grade):
        self.name = name
        self.grade = grade 


class Popsicle:
    def __init__(self, stickers, flavor, student):
        self.stickers = stickers
        self.flavor = flavor
        self.creator = student

    def eat(self):
        print("YUM")

    def add_sticker(self, sticker_name):
        self.stickers.append(sticker_name)

    def count_stickers(self):
        return len(self.stickers)


creator = Student("Charlie", "kindergarten")

stickers = [ 'bat-man-sticker', 'apple-sticker', 'sparkle-sticker']

flavor = 'Apple'

popsicle = Popsicle(stickers, flavor, creator)

# count all the stickers
print(popsicle.stickers)
print(popsicle.count_stickers())

# add a sticker
popsicle.add_sticker("awesome sticker")

# count again
print(popsicle.stickers)
print(popsicle.count_stickers())

print(sorted(popsicle.stickers))

popsicle.eat()
