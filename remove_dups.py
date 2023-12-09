# Copyright, Electimon 2023
# i just wanted to put that there xd

with open("proprietary-files.txt") as a:
    l = a.read()

l2 = l.splitlines()

l3 = set()
l4 = []
for __l in l2:
    _l = __l.split("/")
    _l.insert(-1, "mt6879")
    if "/".join(_l) in l:
        del _l[-2]
        if len("/".join(_l)) > 0:
            l3.add("/".join(_l))
for _l in l2:
    if _l in l3:
        continue
    else:
        l4.append(_l)
#print(l3)
with open("proprietary-files.txt", 'r+') as l:
    l.truncate(0)
    l.write("\n".join(l4))
