import json
import sys

result = []
with open(sys.argv[1], "rt") as f:
    db = json.load(f)
    for file in db:
        if not 'ThirdParty' in file['file']:
            result.append(file)

print(json.dumps(result, indent=4))
