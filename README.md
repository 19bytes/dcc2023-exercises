# DCC 2023 - Terragrunt Workshop Aufgaben


## Installation

- Terraform: https://developer.hashicorp.com/terraform/install
- Terragrunt: https://terragrunt.gruntwork.io/docs/getting-started/install/

### VSCode 

- [Visual Studio Code](https://code.visualstudio.com)
- [VSCodium](https://vscodium.com/#install)
- [Terraform by Anton Kulikov](https://marketplace.visualstudio.com/items?itemName=4ops.terraform) 

### Docker Container

Nur für `linux/amd64` und `linux/arm64`.

[devopsinfra/docker-terragrunt](https://hub.docker.com/r/devopsinfra/docker-terragrunt/)

```
docker pull devopsinfra/docker-terragrunt:latest
```


### Unterstützte und kompatible Terraform/Terragrunt Versionen

| Terraform Version | Open Tofu Version | Terragrunt Version |                   |
| ----------------- | ------------------ | ------------------ | ----------------- |
| *1.6.x*           | *1.6.x (TG: >=0.52.0)* |*>= 0.53.0*     | *<-- (bevorzugt)* |
| 1.5.x             |                    |>= 0.48.0         |                   |
| 1.4.x             |                    |>= 0.45.0         |                   |


## Aufgabe 1

[Terraform - Modularisierung & Parametrisierung](Aufgabe-1/Aufgabenbeschreibung-1.md)


## Aufgabe 2

[Terraform - Modularisierung & Stages](Aufgabe-2/Aufgabenbeschreibung-2.md)


## Aufgabe 3

[Terragrunt - Grundlagen](Aufgabe-3/Aufgabenbeschreibung-3.md)


## Aufgabe 4

[Terragrunt - Details](Aufgabe-4/Aufgabenbeschreibung-4.md)
