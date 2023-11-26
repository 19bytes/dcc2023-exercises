# Übung 3 – Terragrunt Grundlagen

1. Stelle sicher, dass die Ressourcen der letzten Aufgabe vollständig aus der hcloud von Hetzner entfernt wurden

1. Kopiere das `modules`-Verzeichnis der letzten Lösung oder der Musterlösung von Aufgabe 2 in ein neues Verzeichnis, z.B. `Aufgabe-3`

1. Lege eine neue Verzeichnisstruktur mit den `terragrunt.hcl`-Dateien für den Terragrunt-Code an:
    - Erstelle im Hauptverzeichnis die Verzeichnisse `stage-dev` und `stage-qa`
    - Erstelle in den `stage-*`-Verzeichnissen die Unterverzeichnisse `placement-group` und `server`
    - Erzeuge jeweils eine leere `terragrunt.hcl`-Datei in den neuen Unterverzeichnissen
    - Erzeuge im Hauptverzeichnis eine `terragrunt.hcl`-Datei 

1. Für die Erzeugung der benötigten Provider-Konfigurationen legen wir im Hauptverzeichnis eine `terragrunt.hcl`-Datei an und fügen in diese einen `generator`-Block für den hcloud Provider ein:
    - ```
        generate "provider" {
            path = "provider.tf"
            if_exists = "overwrite_terragrunt"
            contents = <<EOF
        ###########
        ### TBD ###
        ###########
        EOF
        }    
        ```

1. Füge in die vier `terragrunt.hcl`-Dateien der Module die folgenden Konfigurationselemente mit ihren Konfigurationen ein:
    - ```
        include{
            ...
        }
        ```
    - ```
        terraform{
            ...
        }
        ```
    - ```
        dependency "dev_pg" {
            config_path = "../placement-group"
            mock_outputs = {
                id = "4711"
            }
        }
        ```
    - ```
        inputs{
            ...
        }
        ```
    - Als `server_type` bitte unbedingt `CX11` oder `CAX11` verwenden!
    - Für das `image` kann `ubuntu-22.04` oder `debian-12` verwendet werden
    - **Wichtig:** 
        - *Verwende den zuvor ausgegebenen individuellen Token für den Zugriff auf die hcloud!*
        - *Verwende den zugehörigen Prefix in den Namen der Ressourcen!*


1. Passe die kopierten Terraform-Module im `modules`_Verzeichnis an so das sie Terragrunt konform sind

1. Überprüfe die Konfiguration durch den Aufruf von `terragrunt run-all plan`

1. Deploye die Änderungen der Stages `stage-dev` und `stage-qa` per `terragrunt run-all apply` in die hcloud


## Aufräumarbeiten

Entferne bitte nach dem Abschluss der Aufgabe alle von dir in der hcloud bei Hetzner erstellten Ressourcen durch den Aufruf von `terragrunt run-all destroy`.
