import argparse

def add(a, b):
    return a + b

def main():
    parser = argparse.ArgumentParser(description="Simple add app")
    parser.add_argument("a", type=int)
    parser.add_argument("b", type=int)
    args = parser.parse_args()
    print(add(args.a, args.b))

if __name__ == "__main__":
    main()
