import sys

def main():
    line = sys.stdin.readline().strip()
    parts = line.split(" ")
    a = int(parts[0])
    b = int(parts[1])
    print(a + b)

if __name__ == "__main__":
    main()
