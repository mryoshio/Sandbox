import sys, time

while True:
    for s in ["\\", "|", "/", "-"]:
        print "\r", s,
        time.sleep(0.25)
        sys.stdout.flush()
