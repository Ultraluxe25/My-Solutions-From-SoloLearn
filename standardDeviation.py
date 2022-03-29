# The given code includes a list of heights for various basketball players.
# You need to calculate and output how many players are in the range of one standard deviation from the mean.

players = [180, 172, 178, 185, 190, 195, 192, 200, 210, 190]


def find_standart_deviation(data):
    total = sum(data)
    number = len(data)
    mean = total / number
    
    deviation_set = []
    for i in data:
        deviation_set.append((mean - i) ** 2)
    deviation = sum(deviation_set) / number
    standard_deviation = deviation ** 0.5
    
    counter = 0
    for i in data:
        if mean - standard_deviation <= i <= mean + standard_deviation:
            counter += 1
    
    return counter


print(find_standart_deviation(players))
