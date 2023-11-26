# Übung 1 – Terraform Deployments

1. Erstelle für diese Aufgabe ein neues Verzeichnis, z.B. `Aufgabe-1`
    - Lege in diesem Verzeichnis ein `modules`-Verzeichnis an
    - Erstelle zwei neue Terraform-Module `placement-group` und `server` in diesem Unterordner
    - Verwende den [`hcloud`-Provider](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs) für die Hetzner Cloud als Grundlage für die neuen Module:
        - [`hcloud_placement_group`](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/placement_group)
        - [`hcloud_server`](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server)

        *Definiere nur für die ‚Required‘-Parameter Variablen!*

1. Erstelle ein weiteren Unterordner `stage-dev` und erstelle dort die Datei `server.tf`

1. Verwende in der Datei `server.tf` die zuvor erstellten Module um damit in der `hcloud` jeweils eine Instanz der Ressourcen zu erzeugen
    - Als `server_type` bitte unbedingt `CX11` oder `CAX11` verwenden!
    - Für das `image` kann `ubuntu-22.04` oder `debian-12` verwendet werden
    - Der `hcloud`-Token kann über eine Umgebungsvariable an Terraform übergeben werden: 
        ```
        $ read -s TF_VAR_hcloud_token
        $ export TF_VAR_hcloud_token
        ```
    - **Wichtig:** 
        - *Verwende den zuvor ausgegebenen individuellen Token für den Zugriff auf die hcloud!*
        - *Verwende den zugehörigen Prefix in den Namen der Ressourcen!*

1. Führe `terraform init` zur initialisierung der hcloud-Module auf und überprüfe die Konfiguration durch den Aufruf von `terraform plan`.

1. Deploye die Änderungen der Stage `stage-dev` per `terraform apply` in die hcloud


## Aufräumarbeiten

Entferne bitte nach dem Abschluss der Aufgabe alle von dir in der hcloud bei Hetzner erstellten Ressourcen durch den Aufruf von `terraform destroy`.
