@echo off


IF /I "%1"=="up-team" GOTO up-team
IF /I "%1"=="up-team-logs" GOTO up-team-logs
IF /I "%1"=="stop-team" GOTO stop-team
IF /I "%1"=="up-redis-team" GOTO up-redis-team
IF /I "%1"=="up-redis-team-logs" GOTO up-redis-team-logs
IF /I "%1"=="stop-redis-team" GOTO stop-redis-team
IF /I "%1"=="up-match" GOTO up-match
IF /I "%1"=="up-match-logs" GOTO up-match-logs
IF /I "%1"=="stop-match" GOTO stop-match
IF /I "%1"=="up-match-status" GOTO up-match-status
IF /I "%1"=="up-match-status-logs" GOTO up-match-status-logs
IF /I "%1"=="stop-match-status" GOTO stop-match-status
IF /I "%1"=="up-player" GOTO up-player
IF /I "%1"=="up-player-logs" GOTO up-player-logs
IF /I "%1"=="stop-player" GOTO stop-player
IF /I "%1"=="up-all" GOTO up-all
IF /I "%1"=="stop-all" GOTO stop-all
IF /I "%1"=="status" GOTO status
GOTO error

:up-team
	docker compose -f ../redis-team-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_team -f ../team-service/compose.yaml up -d --build
	GOTO :EOF

:up-team-logs
	docker compose -f ../redis-team-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_team -f ../team-service/compose.yaml up --build
	GOTO :EOF

:stop-team
	docker compose -f ../team-service/compose.yaml stop
	GOTO :EOF

:up-redis-team
	docker compose -f ../redis-team-service/compose.yaml up -d --build
	GOTO :EOF

:up-redis-team-logs
	docker compose -f ../redis-team-service/compose.yaml up --build
	GOTO :EOF

:stop-redis-team
	docker compose -f ../redis-team-service/compose.yaml stop
	GOTO :EOF

:up-match
	docker compose --env-file ./envs/env_match -f ../match-service/docker-compose.yaml up -d --build
	GOTO :EOF

:up-match-logs
	docker compose --env-file ./envs/env_match -f ../match-service/docker-compose.yaml up --build
	GOTO :EOF

:stop-match
	docker compose -f ../match-service/compose.yaml stop
	GOTO :EOF

:up-match-status
	docker compose --env-file ./envs/env_match_status -f ../match-status-service/compose.yaml up -d --build
	GOTO :EOF

:up-match-status-logs
	docker compose --env-file ./envs/env_match_status -f ../match-status-service/compose.yaml up --build
	GOTO :EOF

:stop-match-status
	docker compose -f ../match-status-service/compose.yaml stop
	GOTO :EOF

:up-player
	docker compose --env-file ./envs/env_player -f ../player-service/docker-compose.yaml up -d --build
	GOTO :EOF

:up-player-logs
	docker compose --env-file ./envs/env_player -f ../player-service/docker-compose.yaml up --build
	GOTO :EOF

:stop-player
	docker compose -f ../player-service/docker-compose.yaml stop
	GOTO :EOF

:up-all
	docker compose -f ../redis-team-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_team -f ../team-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_match -f ../match-service/docker-compose.yaml up -d --build
	docker compose --env-file ./envs/env_match_status -f ../match-status-service/compose.yaml up -d --build
	docker compose --env-file ./envs/env_player -f ../player-service/docker-compose.yaml up -d --build
	GOTO :EOF

:stop-all
	docker compose -f ../team-service/compose.yaml stop
	docker compose -f ../redis-team-service/compose.yaml stop
	docker compose -f ../match-service/docker-compose.yaml stop
	docker compose -f ../match-status-service/compose.yaml stop
	GOTO :EOF

:status
	docker compose ps
	GOTO :EOF

:error
    IF "%1"=="" (
        ECHO make: *** No targets specified and no makefile found.  Stop.
    ) ELSE (
        ECHO make: *** No rule to make target '%1%'. Stop.
    )
    GOTO :EOF
