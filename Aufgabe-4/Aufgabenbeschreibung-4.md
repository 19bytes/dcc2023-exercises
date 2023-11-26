# Übung 4 – Terragrunt Features

1. Stelle sicher, dass die Ressourcen der letzten Aufgabe vollständig aus der hcloud von Hetzner entfernt wurden (`terragrunt run-all destroy`)

1. Kopiere den Terraform-Code der letzten Lösung oder der Musterlösung von Aufgabe 3 in ein neues Verzeichnis, z.B. `Aufgabe-4`

1. Ersetze die relativen Pfade in der `source`-Definitionen der Module, in dem du sie durch eine passende [Build-In Funktion](https://terragrunt.gruntwork.io/docs/reference/built-in-functions/) ersetzt

1. Überprüfe die Korrektheit der Änderungen durch den Aufruf von  `terragrunt run-all plan`
    - Füge ggf. [`mock`-Outputs](https://terragrunt.gruntwork.io/docs/features/execute-terraform-commands-on-multiple-modules-at-once/#unapplied-dependency-and-mock-outputs) hinzu, damit `terragrunt run-all plan` fehlerfrei durchläuft

1. Verwende `locals` und `inputs` um deinen Terrgrunt-Code "DRY" zu halten
    - Erstelle zwei neue Dateien:
        1. Die Datei `env.hcl` in beiden `stage-*`-Verzeichnissen. Definiere einen `locals`-Block mit der Variable `environment` in den Dateien und weise ihr den Wert `dev` oder `qa` zu
        2. Die Datei `common.hcl` im Root-Verzeichnis. Definiere einen `locals`-Block mit der Variablen `base_prefix` in der Datei. Schreibe den zugeteilten Prefix als Wert in die Variable
    - Binde die beiden Dateien im `locals`-Block der Root-`terragrunt.hcl` ein:
        - Verwende die beiden [Build-In Funktionen](https://terragrunt.gruntwork.io/docs/reference/built-in-functions/) `find_in_parent_folders()` und `read_terragrunt_config()`
    - Füge nun einen `inputs`-Block in die Root-`terragrunt.hcl` ein und [*merge*](https://terragrunt.gruntwork.io/docs/rfc/imports/#read_terragrunt_config-helper-function) die zuvor definierten `locals`-Variblen dort hinein
    - Verwende die neuen Variablen in den `terragrunt.hcl`-Dateien der Stages zur Erstellung eines eindeutigen Names:
        - Beispiel-Pattern: `$base_prefix_$environment_NAME`

1. Überprüfe die Konfiguration durch den Aufruf von `terragrunt run-all plan`

1. Deploye die Änderungen der Stages `stage-dev` und `stage-qa` per `terragrunt run-all apply` in die hcloud

## Aufräumarbeiten

Entferne bitte nach dem Abschluss der Aufgabe alle von dir in der hcloud bei Hetzner erstellten Ressourcen durch den Aufruf von `terragrunt run-all destroy`.
