import re

def word_count(phrase):
    ledger = dict()

    for word in re.split('\s\'|\'\s|[,\s.:!&@$%^&\n_]', phrase):
        key = word.strip().lower()
        if key:
            if key in ledger:
                ledger[key] += 1
            else:
                ledger[key] = 1
    return ledger
