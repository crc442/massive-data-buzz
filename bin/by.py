with open('data.txt', 'r+') as f:
	# print (f.readline())

	s = f.readlines()
	for p in s:
		# a = str(f.readline())
		b = p.split()
		content = int(b[1])
		print b[0]+"\t"+str(content/2)
