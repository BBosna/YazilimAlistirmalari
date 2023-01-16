liste = [[1, 'a', ['cat'], 2], [[[3]], 'dog'], 4, 5]
yeni_liste = []

def Duzenleyici(n):
    for i in n:
        if isinstance(i, (list, tuple)):
            Duzenleyici(i)
        else:
            yeni_liste.append(i)

Duzenleyici(liste)

print(yeni_liste)
