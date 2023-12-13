.PHONY: start
start:
	docker compose up -d

.PHONY: start-homeassistant
start-homeassistant:
	docker compose up -d homeassistant

.PHONY: restart
restart:
	docker compose restart

.PHONY: restart-homeassistant
restart-homeassistant:
	docker compose restart homeassistant


.PHONY: update
update: update-homeassistant

.PHONY: update-homeassistant
update-homeassistant:
	docker compose pull homeassistant
	docker compose up -d homeassistant

.PHONY: stop
stop:
	docker compose down

.PHONY: stop-homeassistant
stop-homeassistant:
	docker compose stop homeassistant
