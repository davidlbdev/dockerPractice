import sys
from collections import Counter

def count_vowels(file_path):
    vowels = "aeiou"

    try:
        with open(file_path, "r") as file:
            text = file.read().lower()
            counts = Counter(char for char in text if char in vowels)

        result = {
            "a": counts.get("a", 0),
            "e": counts.get("e", 0),
            "i": counts.get("i", 0),
            "o": counts.get("o", 0),
            "u": counts.get("u", 0)
        }

        return result

    except FileNotFoundError:
        print(f"Error: {file_path} not found.")
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python frequency.py <file_path>")
        sys.exit(1)

    file_path = sys.argv[1]
    result = count_vowels(file_path)
    print(result)
