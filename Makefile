lint:
	helm lint charts/*

package:
	helm package charts/*

index:
	helm repo index --merge index.yaml --url https://dblencowe.github.io/helm-charts/ .

next_ver:
	standard-version --dry-run

default: lint package index next_ver

.PHONY: lint package index
.DEFAULT_GOAL := default