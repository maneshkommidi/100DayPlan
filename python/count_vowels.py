def count_vowels(s):
    vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'}
    count = sum(1 for ch in s if ch in vowels)
    return count

count_vowels("Hello, World!")