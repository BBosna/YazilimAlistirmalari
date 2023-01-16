l = [[1, 2], [3, 4], [5, 6, 7], 3]


def tersocu(n):
    n.reverse()
    for i in range(len(n)):
        if isinstance(i, (list, tuple)):
            n[i].reverse()
        else:
            continue


tersocu(l)

print(l)
