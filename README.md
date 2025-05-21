# 4L_gardener

Dieses Script bietet ein dynamisches Gartendienst-Erlebnis für das ESX Framework in FiveM. Spieler können verschiedene Gartenarbeiten übernehmen, wie Unkraut jäten, Bäume schneiden und Rasen mähen. Es beinhaltet ein Erfahrungs- und Levelsystem, ein Belohnungssystem sowie anpassbare Einsatzorte.

Erstellt von **Life4Tune** für das 4Life Roleplay Projekt.

---

## ✨ Features

- **Vielfältige Aufgabenarten:** Spieler können Aufgaben wie Unkraut jäten, Bäume schneiden und Rasen mähen ausführen.
- **Erfahrungs- und Belohnungssystem:** Spieler erhalten Erfahrungspunkte und Geld für jede erledigte Aufgabe.
- **Anpassbare Fahrzeuge und Zonen:** Positionen können leicht in der Konfiguration geändert werden.
- **Einfache Einrichtung:** Alle Einstellungen können in der `Config.lua` angepasst werden.

---

## 🛠️ Installation

1. Lade dieses Repository herunter und lege es im `resources`-Ordner deines FiveM-Servers ab.
2. Stelle sicher, dass **ESX** und **MySQL** auf deinem Server installiert sind.
3. Importiere die Datei `skills_gardening.sql` in deine Datenbank, um die benötigten Tabellen zu erstellen.
4. Füge die Ressource zur `server.cfg` hinzu:

   ```plaintext
   ensure 4L_gardener
   ```

5. Passe die `config.lua` nach deinen Serveranforderungen an.

---

## ⚙️ Konfiguration

Alle Einstellungen werden in der Datei `config.lua` vorgenommen. Hier einige wichtige Optionen:

```lua
Config = {}
Config.Debug = false -- Debug-Modus aktivieren/deaktivieren
Config.DrawDistance = 50 -- Sichtweite für Marker

Config.ExperiencePerPoint = 10 -- Erfahrung pro Arbeitspunkt
Config.MoneyPerPoint = 50 -- Auszahlung pro Punkt

Config.Vehicle = 'mower' -- Fahrzeug-Modellname
Config.VehicleSpawn = vector4(-42.0131, -412.1090, 40.3985, 69.7127) -- Spawn-Position
```

---

### 🔲 Zonen

Die Positionen von Jobverwaltung und Fahrzeuglöschung kannst du unter `Config.Zones` anpassen:

```lua
Config.Zones = {
    ManageJob = {
        Position = vector3(-45.5763, -415.8636, 39.4970),
        Size  = {x = 1.0, y = 1.0, z = 1.0},
        Color = {r = 8, g = 163, b = 0},
        Type  = 41, Rotate = true
    },
    VehicleDelete = {
        Position = vector3(-41.7814, -411.9491, 38.6962),
        Size  = {x = 3.0, y = 3.0, z = 1.0},
        Color = {r = 8, g = 163, b = 0},
        Type  = 25, Rotate = false
    }
}
```

---

### 📍 Einsatzorte

Arbeitsbereiche wie Gartenpflege und Baumschnitt kannst du hier konfigurieren:

```lua
Config.JobPickups = {
    vector3(-154.0146, -440.3530, 33.7225),
    -- Weitere Koordinaten ...
}

Config.JobTrees = {
    vector3(-154.0582, -463.6331, 32.9408),
    -- Weitere Koordinaten ...
}
```

---

## 🗃️ SQL Setup

Die Datei `skills_gardening.sql` erstellt die benötigte Datenbanktabelle:

```sql
CREATE TABLE `skills_gardening` (
	`identifier` VARCHAR(46) NOT NULL COLLATE 'latin1_swedish_ci',
	`experience` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`identifier`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
```

---

## 📦 Abhängigkeiten

- **[ESX](https://github.com/esx-framework/esx_core)** – Essentialmode Extended Framework
- **[oxmysql](https://github.com/overextended/oxmysql)** – Asynchrone MySQL Library
- **[ox_lib](https://github.com/overextended/ox_lib)** – Utility-Library für UI, Funktionen & mehr

---

## 👨‍🌾 Credits

Entwickelt von **Life4Tune**  
Für den Einsatz auf **4Life RP** (https://www.4-life.net)
