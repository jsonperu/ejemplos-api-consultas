<div align="center">

![JSON.pe Logo](jsonpe.png)

# 🚀 JSON.pe API – Ejemplos Multilenguaje

**Colección completa de ejemplos de código para integrar la API de JSON.pe en cualquier lenguaje de programación**

[![API](https://img.shields.io/badge/API-JSON.pe-blue?style=for-the-badge)](https://api.json.pe)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
[![Languages](https://img.shields.io/badge/Languages-18-orange?style=for-the-badge)]()

</div>

---

## 📋 Tabla de Contenidos

- [✨ Características](#-características)
- [🔑 Autenticación](#-autenticación)
- [📡 Endpoint](#-endpoint)
- [🚀 Inicio Rápido](#-inicio-rápido)
- [💻 Lenguajes Disponibles](#-lenguajes-disponibles)
- [📁 Estructura del Proyecto](#-estructura-del-proyecto)
- [📖 Guía de Uso por Lenguaje](#-guía-de-uso-por-lenguaje)
- [🛠️ Buenas Prácticas](#️-buenas-prácticas)
- [🤝 Contribuir](#-contribuir)

---

## ✨ Características

- ✅ **18 lenguajes de programación** soportados
- ✅ **Ejemplos listos para usar** - Solo reemplaza el token y ejecuta
- ✅ **Desde Visual FoxPro hasta tecnologías modernas** - Cobertura completa
- ✅ **Código limpio y documentado** - Fácil de entender y adaptar
- ✅ **Manejo de errores incluido** - Ejemplos robustos

---

## 🔑 Autenticación

La API utiliza autenticación mediante **Bearer Token**. Debes incluir tu token en el header `Authorization`:

```http
Authorization: Bearer <token>
```

> ⚠️ **Importante**: Reemplaza `<token>` con tu token real en cada ejemplo antes de ejecutarlo.

---

## 📡 Endpoint

### Consulta de DNI

**Endpoint:** `POST https://api.json.pe/api/dni`

**Headers requeridos:**
```http
Authorization: Bearer <token>
Content-Type: application/json
```

**Body:**
```json
{
  "dni": "27427864"
}
```

**Ejemplo con cURL:**
```bash
curl --request POST \
  --url https://api.json.pe/api/dni \
  --header 'Authorization: Bearer <token>' \
  --header 'Content-Type: application/json' \
  --data '{
  "dni": "27427864"
}'
```

---

## 🚀 Inicio Rápido

1. **Clona el repositorio**
   ```bash
   git clone https://github.com/tu-usuario/jsonpe-ejemplos.git
   cd jsonpe-ejemplos
   ```

2. **Elige tu lenguaje**
   - Navega a la carpeta del lenguaje que prefieras
   - Abre el archivo de ejemplo

3. **Configura tu token**
   - Reemplaza `<token>` con tu token real de JSON.pe

4. **Ejecuta el ejemplo**
   - Sigue las instrucciones específicas del lenguaje en la sección [Guía de Uso](#-guía-de-uso-por-lenguaje)

---

## 💻 Lenguajes Disponibles

| Lenguaje | Carpeta | Archivo | Versión |
|----------|---------|---------|---------|
| 🐚 **Bash/cURL** | `curl/` | `dni_ruc.sh` | - |
| 💻 **PowerShell** | `powershell/` | `dni_ruc.ps1` | 5.0+ |
| 📜 **JavaScript** | `javascript/` | `dni_ruc.mjs` | Node 18+ |
| 📘 **TypeScript** | `typescript/` | `dni_ruc.ts` | 4.5+ |
| 🐍 **Python** | `python/` | `dni_ruc.py` | 3.7+ |
| ☕ **Java** | `java/` | `DniRucClient.java` | 11+ |
| 🔷 **C#** | `csharp/` | `DniRucClient.cs` | .NET 5+ |
| 🐘 **PHP** | `php/` | `dni_ruc.php` | 7.4+ |
| 💎 **Ruby** | `ruby/` | `dni_ruc.rb` | 2.7+ |
| 🐹 **Go** | `go/` | `main.go` | 1.18+ |
| 🦀 **Rust** | `rust/` | `main.rs` | 1.60+ |
| 🍎 **Swift** | `swift/` | `DniRucClient.swift` | 5.5+ |
| 🔷 **Kotlin** | `kotlin/` | `DniRucClient.kt` | 1.6+ |
| 🎯 **Dart** | `dart/` | `dni_ruc.dart` | 2.15+ |
| ⚙️ **C** | `c/` | `dni_ruc.c` | C99 |
| ⚙️ **C++** | `cpp/` | `dni_ruc.cpp` | C++11 |
| 🔵 **VB.NET** | `vbnet/` | `DniRucClient.vb` | .NET 5+ |
| 🦊 **Visual FoxPro** | `visual_foxpro/` | `dni_ruc.prg` | 9.0 |

---

## 📁 Estructura del Proyecto

```
jsonpe-ejemplos/
│
├── 📄 README.md
├── 🖼️ jsonpe.png
├── 🎨 favicon.ico
│
├── 📁 curl/
│   └── dni_ruc.sh
│
├── 📁 powershell/
│   └── dni_ruc.ps1
│
├── 📁 javascript/
│   └── dni_ruc.mjs
│
├── 📁 typescript/
│   └── dni_ruc.ts
│
├── 📁 python/
│   └── dni_ruc.py
│
├── 📁 java/
│   └── DniRucClient.java
│
├── 📁 csharp/
│   └── DniRucClient.cs
│
├── 📁 php/
│   └── dni_ruc.php
│
├── 📁 ruby/
│   └── dni_ruc.rb
│
├── 📁 go/
│   └── main.go
│
├── 📁 rust/
│   └── main.rs
│
├── 📁 swift/
│   └── DniRucClient.swift
│
├── 📁 kotlin/
│   └── DniRucClient.kt
│
├── 📁 dart/
│   └── dni_ruc.dart
│
├── 📁 c/
│   └── dni_ruc.c
│
├── 📁 cpp/
│   └── dni_ruc.cpp
│
├── 📁 vbnet/
│   └── DniRucClient.vb
│
└── 📁 visual_foxpro/
    └── dni_ruc.prg
```

---

## 📖 Guía de Uso por Lenguaje

### 🐚 Bash / cURL

```bash
cd curl
chmod +x dni_ruc.sh
./dni_ruc.sh
```

**Requisitos:** `curl` instalado

---

### 💻 PowerShell

```powershell
cd powershell
pwsh dni_ruc.ps1
```

**Requisitos:** PowerShell 5.0 o superior

---

### 📜 JavaScript (Node.js)

```bash
cd javascript
npm install node-fetch  # Solo si usas Node < 18
node dni_ruc.mjs
```

**Requisitos:** Node.js 18+ (o instalar `node-fetch@^3` para versiones anteriores)

---

### 📘 TypeScript

```bash
cd typescript
npm install -g tsx  # O usa tsc para compilar
tsx dni_ruc.ts
```

**Requisitos:** Node.js 18+ (para `fetch` nativo) y TypeScript 4.5+

---

### 🐍 Python

```bash
cd python
pip install requests
python dni_ruc.py
```

**Requisitos:** Python 3.7+ y `requests`

---

### ☕ Java

```bash
cd java
javac DniRucClient.java
java DniRucClient
```

**Requisitos:** Java 11+ (usa `java.net.http`)

---

### 🔷 C#

```bash
cd csharp
dotnet run
# O compila directamente:
csc DniRucClient.cs
```

**Requisitos:** .NET 5+ SDK

---

### 🐘 PHP

```bash
cd php
php dni_ruc.php
```

**Requisitos:** PHP 7.4+ con extensión `curl`

---

### 💎 Ruby

```bash
cd ruby
ruby dni_ruc.rb
```

**Requisitos:** Ruby 2.7+ (usa `net/http` estándar)

---

### 🐹 Go

```bash
cd go
go run main.go
```

**Requisitos:** Go 1.18+

---

### 🦀 Rust

```bash
cd rust
cargo add reqwest serde_json anyhow
cargo run
```

**Requisitos:** Rust 1.60+ y Cargo

---

### 🍎 Swift

```bash
cd swift
swift DniRucClient.swift
# O compila:
swiftc DniRucClient.swift -o dni_ruc
./dni_ruc
```

**Requisitos:** Swift 5.5+ (usa Swift Concurrency)

---

### 🔷 Kotlin

```bash
cd kotlin
kotlinc DniRucClient.kt -include-runtime -d dni_ruc.jar
java -jar dni_ruc.jar
```

**Requisitos:** Kotlin 1.6+ y JVM

---

### 🎯 Dart

```bash
cd dart
dart run dni_ruc.dart
```

**Requisitos:** Dart SDK 2.15+

---

### ⚙️ C

```bash
cd c
cc dni_ruc.c -lcurl -o dni_ruc
./dni_ruc
```

**Requisitos:** Compilador C y `libcurl`

---

### ⚙️ C++

```bash
cd cpp
c++ dni_ruc.cpp -lcurl -o dni_ruc
./dni_ruc
```

**Requisitos:** Compilador C++ y `libcurl`

---

### 🔵 VB.NET

```bash
cd vbnet
dotnet new console -lang vb
# Copia DniRucClient.vb al proyecto
dotnet run
```

**Requisitos:** .NET 5+ SDK

---

### 🦊 Visual FoxPro

1. Abre Visual FoxPro 9
2. Navega a la carpeta `visual_foxpro/`
3. Ejecuta: `DO dni_ruc.prg`

**Requisitos:** Visual FoxPro 9.0

---

## 🛠️ Buenas Prácticas

### 🔐 Seguridad

- ✅ **Nunca commitees tokens reales** en el código
- ✅ Usa **variables de entorno** o gestores de secretos en producción
- ✅ Implementa **rate limiting** para evitar abusos
- ✅ Valida y sanitiza los **parámetros de entrada**

### ⚡ Rendimiento

- ✅ Implementa **timeouts** en tus peticiones HTTP
- ✅ Usa **caché** cuando sea apropiado
- ✅ Maneja **errores HTTP** (4xx, 5xx) apropiadamente
- ✅ Implementa **retry logic** con backoff exponencial

### 📝 Código

- ✅ **Maneja excepciones** correctamente
- ✅ **Registra respuestas** durante desarrollo para entender la estructura
- ✅ **Valida respuestas** antes de procesarlas
- ✅ **Documenta** tu código cuando lo adaptes

---

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Si quieres agregar un nuevo lenguaje o mejorar un ejemplo existente:

1. 🍴 **Fork** el repositorio
2. 🌿 Crea una **rama** para tu feature (`git checkout -b feature/nuevo-lenguaje`)
3. ✏️ Agrega o mejora el ejemplo
4. 📝 Actualiza el `README.md` con la nueva información
5. 💾 **Commit** tus cambios (`git commit -m 'Agrega ejemplo en [Lenguaje]'`)
6. 📤 **Push** a la rama (`git push origin feature/nuevo-lenguaje`)
7. 🔄 Abre un **Pull Request**

### 📋 Checklist para nuevos lenguajes

- [ ] Código funcional y probado
- [ ] README actualizado con el nuevo lenguaje
- [ ] Instrucciones de instalación y ejecución incluidas
- [ ] Manejo de errores implementado
- [ ] Código comentado y documentado

---

<div align="center">

**⭐ Si este proyecto te fue útil, ¡dale una estrella! ⭐**

Hecho con ❤️ para la comunidad de desarrolladores

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com)
[![API](https://img.shields.io/badge/API-JSON.pe-FF6B6B?style=for-the-badge)](https://api.json.pe)

</div>
