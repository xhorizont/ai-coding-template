import os, sys
root = sys.argv[1] if len(sys.argv) > 1 else "."
for dirpath, _, filenames in os.walk(root):
    for f in filenames:
        print(os.path.relpath(os.path.join(dirpath, f), root))
