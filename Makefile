world-pull:
	ssh zakha@178.47.142.112 "cd /home/zakha/minecraft-server && docker-compose down"
	scp -r zakha@178.47.142.112:~/data/world ./server/
	scp -r zakha@178.47.142.112:~/data/world_nether ./server/
	scp -r zakha@178.47.142.112:~/data/world_the_end ./server/
	ssh zakha@178.47.142.112 "cd /home/zakha/minecraft-server && docker-compose up --build -d"
world-push:
	ssh zakha@178.47.142.112 "cd /home/zakha/minecraft-server && docker-compose down"
	scp -r ./server/world zakha@178.47.142.112:~/data/
	scp -r ./server/world_nether zakha@178.47.142.112:~/data/
	scp -r ./server/world_the_end zakha@178.47.142.112:~/data/
	ssh zakha@178.47.142.112 "cd /home/zakha/minecraft-server && docker-compose up --build -d"
