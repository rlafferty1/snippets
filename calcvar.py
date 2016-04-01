def mean(list):
    sum = 0
    for entry in list:
        sum = sum + entry
    return sum/len(list)
    
def variance(list):
    sum = 0
    meanoflist = mean(list)
    for entry in list:
        sum = sum + (entry-meanoflist)**2
    return sum/len(list)
    
def multiple_cols(array):
    new_list = []
    for entry in array:
        new_list.append(variance(entry))
    return new_list    
    
def main():
    l = [[2,3,4,100,6],[1,2,3,4,5]]
    print(multiple_cols(l))

main()