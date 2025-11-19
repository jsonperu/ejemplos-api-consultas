<div align="center">

<img src="jsonpe.png" alt="Json.pe Logo" width="200">

# 🚀 Json.pe - API Consulta

**Ejemplos de código para integrar la API de Json.pe en cualquier lenguaje de programación**

[![Website](https://img.shields.io/badge/Website-json.pe-red?style=for-the-badge)](https://json.pe/)
[![Documentación](https://img.shields.io/badge/Documentación-Completa-purple?style=for-the-badge)](https://docs.json.pe/)
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
- [📚 Documentación y Recursos](#-documentación-y-recursos)
- [🛠️ Buenas Prácticas](#️-buenas-prácticas)
- [🤝 Contribuir](#-contribuir)

---

## ✨ Características

- ✅ **18 lenguajes de programación** soportados y más
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
> 
> 💡 **¿No tienes token?** Regístrate en [app.json.pe](http://app.json.pe/) y genera tu token de acceso.

---

## 📡 Endpoint

Json.pe cuenta con una amplia gama de APIs disponibles para consultas de DNI, RUC, Placa, SOAT, Licencia de Conducir, Tipo de Cambio, CPE, y muchas más. 

> 📚 **¿Quieres ver todas las APIs disponibles?** Visita nuestra [documentación completa](https://docs.json.pe/) para conocer todos los endpoints y sus funcionalidades.

A continuación, te mostramos los 2 endpoints básicos más utilizados:

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

### Consulta de RUC

**Endpoint:** `POST https://api.json.pe/api/ruc`

**Headers requeridos:**
```http
Authorization: Bearer <token>
Content-Type: application/json
```

**Body:**
```json
{
  "ruc": "20552103816"
}
```

**Ejemplo con cURL:**
```bash
curl --request POST \
  --url https://api.json.pe/api/ruc \
  --header 'Authorization: Bearer <token>' \
  --header 'Content-Type: application/json' \
  --data '{
  "ruc": "20552103816"
}'
```

---

## 🚀 Inicio Rápido

1. **Obtén tu token de acceso**
   - Regístrate en [app.json.pe](http://app.json.pe/) y crea tu cuenta
   - Genera tu token de acceso desde el dashboard

2. **Clona el repositorio**
   ```bash
   git clone https://github.com/tu-usuario/jsonpe-ejemplos.git
   cd jsonpe-ejemplos
   ```

3. **Elige tu lenguaje**
   - Navega a la carpeta del lenguaje que prefieras
   - Abre el archivo de ejemplo

4. **Configura tu token**
   - Reemplaza `<token>` con tu token real de Json.pe

5. **Ejecuta el ejemplo**
   - Cada archivo contiene instrucciones comentadas para ejecutarlo

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

## 📚 Documentación y Recursos

### 🌐 Landing Page

Conoce más sobre Json.pe, sus servicios, casos de uso y testimonios de clientes:

🔗 **[https://json.pe/](https://json.pe/)**

### 📖 Documentación Completa

Para ver la documentación completa de todas las APIs disponibles (DNI, RUC, Placa, SOAT, Licencia de Conducir, y más), visita:

🔗 **[https://docs.json.pe/](https://docs.json.pe/)**

La documentación incluye:
- ✅ Todos los endpoints disponibles
- ✅ Ejemplos de request y response
- ✅ Códigos de error y manejo
- ✅ Límites y rate limiting
- ✅ Integraciones con sistemas populares

### 🔑 Crear Cuenta y Token

Para crear tu cuenta y generar tu token de acceso:

🔗 **[http://app.json.pe/](http://app.json.pe/)**

Pasos:
1. Regístrate en la plataforma
2. Accede al dashboard
3. Genera tu token de acceso
4. ¡Listo para usar en tus ejemplos!

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
