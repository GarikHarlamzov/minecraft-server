world-pull:
	scp -r zakha@178.47.142.112:~/data/world ./server/
world-push:
	scp -r ./server/world zakha@178.47.142.112:~/data/
