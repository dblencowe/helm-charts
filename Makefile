lint:
	helm lint charts/*

package:
	helm package charts/*

index:
	helm repo index --merge index.yaml --url https://dblencowe.github.io/helm-charts/ .

default: lint package index

.PHONY: lint package index
.DEFAULT_GOAL := default