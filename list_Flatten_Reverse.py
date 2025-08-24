def flatten_list(lst):
    result = []
    for item in lst:
        if isinstance(item, list):
            result.extend(flatten_list(item))
        else:
            result.append(item)
    return result

def reverse_nested_list(lst):
    if not isinstance(lst, list):
        return lst
    
    reversed_list = []
    for item in reversed(lst):
        if isinstance(item, list):
            reversed_list.append(reverse_nested_list(item))
        else:
            reversed_list.append(item)
    return reversed_list

# Test kodları
if __name__ == "__main__":
    # 1. Flatten fonksiyonu testi
    input1 = [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
    output1 = flatten_list(input1)
    print(f"Flatten Input: {input1}")
    print(f"Flatten Output: {output1}")
    print()
    
    # 2. Reverse fonksiyonu testi
    input2 = [[1, 2], [3, 4], [5, 6, 7]]
    output2 = reverse_nested_list(input2)
    print(f"Reverse Input: {input2}")
    print(f"Reverse Output: {output2}")
    print()
    
    # Ek test örnekleri
    test_flatten = [1, [2, 3], [[4, 5], 6]]
    print(f"Ek Flatten Test: {test_flatten} -> {flatten_list(test_flatten)}")
    
    test_reverse = [1, [2, [3, 4]], 5]
    print(f"Ek Reverse Test: {test_reverse} -> {reverse_nested_list(test_reverse)}")