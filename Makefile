# Team Service
up-team:
	docker compose -f ../redis-team-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_team -f ../team-service/compose.yaml up -d --build

up-team-logs:
	docker compose -f ../redis-team-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_team -f ../team-service/compose.yaml up --build

stop-team:
	docker compose -f ../team-service/compose.yaml stop

# Redis Team Service
up-redis-team:
	docker compose -f ../redis-team-service/compose.yaml up -d --build

up-redis-team-logs:
	docker compose -f ../redis-team-service/compose.yaml up --build

stop-redis-team:
	docker compose -f ../redis-team-service/compose.yaml stop

# Match Service
up-match:
	docker compose --env-file ./envs/env_match -f ../match-service/docker-compose.yaml up -d --build

up-match-logs:
	docker compose --env-file ./envs/env_match -f ../match-service/docker-compose.yaml up --build

stop-match:
	docker compose -f ../match-service/compose.yaml stop

# Match Status Service
up-match-status:
	docker compose --env-file ./envs/env_match_status -f ../match-status-service/compose.yaml up -d --build

up-match-status-logs:
	docker compose --env-file ./envs/env_match_status -f ../match-status-service/compose.yaml up --build

stop-match-status:
	docker compose -f ../match-status-service/compose.yaml stop

# Player Service
up-player:
	docker compose --env-file ./envs/env_player -f ../player-service/docker-compose.yaml up -d --build

up-player-logs:
	docker compose --env-file ./envs/env_player -f ../player-service/docker-compose.yaml up --build

stop-player:
	docker compose -f ../player-service/docker-compose.yaml stop

# All
up-all:
	docker compose -f ../redis-team-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_team -f ../team-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_match -f ../match-service/docker-compose.yaml up -d --build
	docker compose --env-file ./envs/env_match_status -f ../match-status-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_player -f ../player-service/docker-compose.yaml up -d --build

# Stop all
stop-all:
	docker compose -f ../team-service/compose.yaml stop
	docker compose -f ../redis-team-service/compose.yaml stop
	docker compose -f ../match-service/docker-compose.yaml stop
	docker compose -f ../match-status-service/compose.yaml stop

# Status
status:
	docker compose ps
