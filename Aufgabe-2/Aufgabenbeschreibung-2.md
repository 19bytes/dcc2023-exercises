# Übung 2 – Modularisierung & Parametrisierung

1. Stelle sicher, dass die Ressourcen der letzten Aufgabe vollständig aus der hcloud von Hetzner entfernt wurden

1. Kopiere den Terraform-Code der letzten Lösung oder der Musterlösung von Aufgabe 1 in ein neues Verzeichnis, z.B. `Aufgabe-2`

1. Erstelle ein neues Unterverzeichnis `stage-qa` neben dem `modules`-Verzeichnis

1. Kopiere die `provider.tf`-Datei aus dem `stage-dev`-Verzeichnis in das neue `stage-qa`-Verzeichnis

1. Lege im Verzeichnis `stage-qa` die Datei `server.tf` mit 2 neue Ressourcen an, basierend auf den bereits erstellten Modulen der anderen Stage 
    - Als `server_type` bitte unbedingt `CX11` oder `CAX11` verwenden!
    - Für das `image` kann `ubuntu-22.04` oder `debian-12` verwendet werden
    - **Wichtig:** 
        - *Verwende den zuvor ausgegebenen individuellen Token für den Zugriff auf die hcloud!*
        - *Verwende den zugehörigen Prefix in den Namen der Ressourcen!*

1. Führe `terraform init` zur initialisierung der hcloud-Module auf und überprüfe die Konfiguration durch den Aufruf von `terraform plan`.

1. Deploye die Änderungen der Stages `stage-dev` und `stage-qa` per `terraform apply` in die hcloud


## Aufräumarbeiten

Entferne bitte nach dem Abschluss der Aufgabe alle von dir in der hcloud bei Hetzner erstellten Ressourcen durch den Aufruf von `terraform destroy`.
