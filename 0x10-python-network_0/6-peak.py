def find_peak(list_of_integers):
    if not list_of_integers:
        return None
    return find_peak_helper(list_of_integers, 0, len(list_of_integers) - 1)

def find_peak_helper(arr, left, right):
    if left == right:
        return arr[left]
    mid = (left + right) // 2
    if arr[mid] > arr[mid + 1]:
        return find_peak_helper(arr, left, mid)
    else:
        return find_peak_helper(arr, mid + 1, right)
