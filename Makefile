up-team:
	docker compose --env-file ../team-service/.env -f ../team-service/compose.yaml up -d --build

up-team-logs:
	docker compose --env-file ../team-service/.env -f ../team-service/compose.yaml up --build

stop-team:
	docker compose -f ../team-service/compose.yaml stop

up-match:
	docker compose -f ../match-service/compose.yaml up -d --build

up-match-logs:
	docker compose -f ../match-service/compose.yaml up --build

stop-match:
	docker compose -f ../match-service/compose.yaml stop

up-match-status:
	docker compose -f ../match-status-service/compose.yaml up -d --build

up-match-status-logs:
	docker compose -f ../match-status-service/compose.yaml up --build

stop-match-status:
	docker compose -f ../match-status-service/compose.yaml stop

up-player:
	docker compose -f ../player-service/compose.yaml up -d --build

up-player-logs:
	docker compose -f ../player-service/compose.yaml up --build

stop-player:
	docker compose -f ../player-service/compose.yaml stop

up-all:
	docker compose -f ../team-service/compose.yaml up -d --build
	docker compose -f ../match-service/compose.yaml up -d --build
	docker compose -f ../match-status-service/compose.yaml up -d --build
	# docker compose -f ../player-service/compose.yaml up -d --build

stop-all:
	docker compose -f ../team-service/compose.yaml stop
	docker compose -f ../match-service/compose.yaml stop
	docker compose -f ../match-status-service/compose.yaml stop
	# docker compose -f ../player-service/compose.yaml stop

status:
	docker compose ps
