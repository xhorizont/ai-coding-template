import json, sys

def main():
    for line in sys.stdin:
        item = json.loads(line)
        print(f"Evaluating {item['id']} ... OK (placeholder)")

if __name__ == "__main__":
    main()
