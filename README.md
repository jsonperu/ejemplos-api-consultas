JSON.pe API – Guía Multilenguaje
================================

Este repositorio ofrece documentación y ejemplos listos para usar de la API de `https://api.json.pe` para la consulta de DNI. La idea es que puedas clonar el proyecto, abrir la carpeta del lenguaje que prefieras y ejecutar el ejemplo sin tener que adivinar la configuración.

> **Datos de prueba**
>
> - Bearer token: `Bearer <token>` (sustituye `<token>` por tu credencial real).
> - DNI de prueba: `27427864`

## Endpoints cubiertos

| Recurso | Método | URL | Body esperado |
|---------|--------|-----|---------------|
| DNI     | POST   | `https://api.json.pe/api/dni` | `{ "dni": "27427864" }` |

El endpoint requiere:

- Encabezado `Authorization: Bearer <TOKEN>`.
- Encabezado `Content-Type: application/json`.
- Cuerpo en JSON con el DNI a consultar.

## Cómo usar este repositorio

1. Clona el proyecto o descárgalo como ZIP.
2. Ubica directamente en la raíz la carpeta del lenguaje que prefieras (todas viven al mismo nivel que este `README`).
3. Sigue las instrucciones que encontrarás comentadas dentro de cada archivo. Todos los ejemplos incluyen el DNI de prueba, pero debes reemplazar `<token>` por tu llave válida antes de ejecutar.

## Estructura

```
README.md
curl/dni_ruc.sh
powershell/dni_ruc.ps1
javascript/dni_ruc.mjs
typescript/dni_ruc.ts
python/dni_ruc.py
java/DniRucClient.java
csharp/DniRucClient.cs
php/dni_ruc.php
ruby/dni_ruc.rb
go/main.go
rust/main.rs
swift/DniRucClient.swift
kotlin/DniRucClient.kt
dart/dni_ruc.dart
c/dni_ruc.c
cpp/dni_ruc.cpp
vbnet/DniRucClient.vb
visual_foxpro/dni_ruc.prg
```

Cada carpeta contiene un único archivo con el ejemplo funcional para la consulta de DNI. Si deseas añadir otro lenguaje, duplica cualquier archivo, tradúcelo al lenguaje deseado y ajusta las instrucciones.

## Guía por lenguaje

- **cURL / Bash** (`curl/dni_ruc.sh`): da permisos con `chmod +x` y ejecuta `./dni_ruc.sh`. Requiere `curl`.
- **PowerShell** (`powershell/dni_ruc.ps1`): ejecuta `pwsh powershell/dni_ruc.ps1`.
- **Node.js** (`javascript/dni_ruc.mjs`): usa Node 18+ o instala `node-fetch@^3` (`npm i node-fetch`). Ejecuta `node dni_ruc.mjs`.
- **TypeScript** (`typescript/dni_ruc.ts`): compila con `tsc` o corre con `tsx`. Necesita Node 18+ para `fetch`.
- **Python** (`python/dni_ruc.py`): instala `requests` (`pip install requests`) y corre `python dni_ruc.py`.
- **Java** (`java/DniRucClient.java`): compila con `javac DniRucClient.java` y corre `java DniRucClient`.
- **C#** (`csharp/DniRucClient.cs`): usa `dotnet run` en un proyecto de consola o `csc DniRucClient.cs`.
- **PHP** (`php/dni_ruc.php`): ejecuta `php dni_ruc.php`. Usa `curl` nativo.
- **Ruby** (`ruby/dni_ruc.rb`): ejecuta `ruby dni_ruc.rb`. Usa `net/http`.
- **Go** (`go/main.go`): corre `go run main.go`.
- **Rust** (`rust/main.rs`): requiere `reqwest`, `serde_json` y `anyhow`. Añade con `cargo add reqwest serde_json anyhow` y corre `cargo run`.
- **Swift** (`swift/DniRucClient.swift`): compila con `swiftc` o ejecuta `swift DniRucClient.swift`. Usa Swift Concurrency (`async/await`).
- **Kotlin** (`kotlin/DniRucClient.kt`): compila con `kotlinc` o usa Gradle/JVM.
- **Dart** (`dart/dni_ruc.dart`): ejecuta `dart run dni_ruc.dart`.
- **C (libcurl)** (`c/dni_ruc.c`): compila con `cc dni_ruc.c -lcurl`.
- **C++ (libcurl)** (`cpp/dni_ruc.cpp`): compila con `c++ dni_ruc.cpp -lcurl`.
- **VB.NET** (`vbnet/DniRucClient.vb`): crea proyecto `dotnet new console -lang vb` y agrega el archivo.
- **Visual FoxPro 9** (`visual_foxpro/dni_ruc.prg`): abre el archivo en VFP9 y ejecuta `DO dni_ruc`.

## Buenas prácticas

- Conserva el token en un gestor seguro cuando lo lleves a producción (usa variables de entorno o un servicio secreto).
- Maneja los errores HTTP (códigos 4xx/5xx) y timeouts.
- Registra la respuesta completa mientras estés probando para entender la estructura devuelta por la API.
- Valida los parámetros antes de invocar la API para evitar llamadas innecesarias.

## Cómo contribuir

1. Crea una rama nueva.
2. Agrega tu ejemplo o mejora.
3. Actualiza esta lista de carpetas en la sección *Estructura* si añades un lenguaje nuevo.
4. Envía un pull request.

¡Listo! Explora los ejemplos y adapta el que mejor funcione para tu stack.

