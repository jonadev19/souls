# 🧭 **Guía para colaborar en el repositorio Souls Knight**

Bienvenidos al repositorio del proyecto **Souls Knight**, un juego tipo _Souls Knight_ desarrollado con **Flutter + Flame + Express + Supabase + MercadoPago**.
Esta guía explica cómo colaborar correctamente en GitHub para evitar conflictos y mantener el proyecto ordenado.

---

## ⚙️ **1. Requisitos iniciales**

Antes de empezar, asegúrate de tener instalado:

- [Git](https://git-scm.com/downloads)
- [Node.js 18+](https://nodejs.org/)
- [Flutter 3.22+](https://flutter.dev/docs/get-started/install)
- Acceso al repositorio del equipo en GitHub
  (pedir invitación a **Jona** si no la tienes)

---

## 🌿 **2. Estructura del repositorio**

```
souls-knight/
├── backend/      → Servidor Express + Supabase + MercadoPago
├── frontend/     → Juego en Flutter + Flame
├── docs/         → Documentación, diseño, diagramas
└── README.md
```

Cada subcarpeta tiene su propio `.gitignore` y `.env` (local).
**Nunca se hace `git init` dentro de las subcarpetas.**

---

## 🔐 **3. Ramas principales**

| Rama       | Propósito                              | Responsable       |
| ---------- | -------------------------------------- | ----------------- |
| `main`     | Código estable (solo merges aprobados) | Jona              |
| `frontend` | Desarrollo del juego en Flutter        | Frontend Dev      |
| `backend`  | Desarrollo de la API en Express        | Backend Dev       |
| `docs`     | Documentación, diagramas, avances      | Documentación Dev |

---

## 🔁 **4. Flujo de trabajo (cómo colaborar correctamente)**

Sigue estos pasos **SIEMPRE** al trabajar:

---

### 🧩 Paso 1 — Actualiza tu repositorio

Antes de empezar a trabajar:

```bash
git checkout <tu-rama>
git pull origin <tu-rama>
```

Ejemplo:

```bash
git checkout frontend
git pull origin frontend
```

---

### 🔧 Paso 2 — Crea una rama de funcionalidad (feature)

Nunca trabajes directamente sobre `frontend` o `backend`.
Crea una rama nueva para cada funcionalidad o corrección.

```bash
git checkout -b feature/<nombre>
```

Ejemplo:

```bash
git checkout -b feature/player-attack
```

---

### 💻 Paso 3 — Trabaja normalmente

Haz tus cambios en tu área correspondiente:

- Si eres **frontend**, modifica `frontend/souls_game/lib/...`
- Si eres **backend**, modifica `backend/src/...`

Guarda y prueba tus cambios localmente.

---

### 💬 Paso 4 — Agrega y confirma tus cambios

```bash
git add .
git commit -m "Descripción clara del cambio"
```

Ejemplo:

```bash
git commit -m "Add player attack animation and sound"
```

👉 Usa siempre mensajes **cortos y descriptivos** (en inglés o español técnico).

---

### ☁️ Paso 5 — Sube tu rama a GitHub

```bash
git push -u origin feature/player-attack
```

---

### 🔁 Paso 6 — Abre un Pull Request (PR)

1. Entra al repo en GitHub.
2. Te saldrá un botón verde “**Compare & pull request**”.
3. Verifica:

   - Base branch → `frontend` o `backend`
   - Compare branch → tu `feature/...`

4. Agrega una descripción y pon el título claro:

   - Ej: `Feature: sistema de ataque del jugador`

5. Crea el Pull Request.

---

### 👀 Paso 7 — Revisión y Merge

- Jona revisará el código, pedirá correcciones si es necesario.
- Cuando esté aprobado → se hace **merge** a la rama correspondiente.
- Luego, Jona integrará los cambios en `main` cuando estén estables.

---

## 📚 **5. Convenciones de nombres**

### 🔹 Ramas

Usa los prefijos:

- `feature/` → nuevas funcionalidades
- `fix/` → correcciones
- `docs/` → documentación
- `hotfix/` → arreglos urgentes

Ejemplos:

```
feature/auth-system
fix/payment-callback
docs/ui-diagram
```

---

### 🔹 Commits

Sigue este formato:

```
<tipo>: <descripción>
```

Ejemplos:

```
feat: add player movement
fix: correct supabase route
docs: update README setup instructions
```

---

## 🧱 **6. Cómo sincronizar cambios del equipo**

Si alguien más subió cambios antes que tú:

```bash
git pull origin <tu-rama> --rebase
```

Ejemplo:

```bash
git pull origin backend --rebase
```

Si hay conflictos:

1. Git te mostrará los archivos en conflicto.
2. Abre esos archivos, corrige las líneas marcadas con `<<<<<<<` y `>>>>>>>`.
3. Guarda y termina el merge con:

   ```bash
   git add .
   git rebase --continue
   ```

---

## 🚫 **7. Qué no hacer nunca**

🚫 No hacer `git init` dentro de subcarpetas
🚫 No hacer `git push origin main` directamente
🚫 No subir archivos `.env`, `node_modules`, ni `build/`
🚫 No hacer commits vacíos como `update`, `fix`, `final`

---

## 🔑 **8. Variables de entorno**

Cada quien debe tener su propio `.env` local.
No se suben a GitHub.

| Ubicación       | Contenido                                   |
| --------------- | ------------------------------------------- |
| `backend/.env`  | Supabase service key, tokens de MercadoPago |
| `frontend/.env` | URLs y claves públicas                      |

> Si lo necesitas, copia el `.env.example` y renómbralo a `.env`

---

## 📋 **9. Uso de Issues y Projects (en GitHub)**

En la pestaña **Projects** del repo:

- Verás un tablero con columnas:

  - 🟡 To Do
  - 🟠 In Progress
  - 🔵 Review
  - 🟢 Done

Cada tarea tendrá un issue asignado, por ejemplo:

```
#23 - Crear animación de ataque del jugador
```

Cuando empieces a trabajar en ella, muévela a “In Progress”.

---

## 🧩 **10. Estructura del equipo**

| Rol                 | Nombre     | Funciones                                    |
| ------------------- | ---------- | -------------------------------------------- |
| 👨‍💻 **Tech Lead**    | Jona       | Revisar código, aprobar PRs, mantener `main` |
| 🎮 **Frontend Dev** | [Nombre]   | Desarrollo con Flutter + Flame               |
| 🧠 **Backend Dev**  | [Nombre]   | API, Supabase, MercadoPago                   |
| 📘 **Docs / QA**    | (opcional) | Documentación, pruebas, reportes             |

---

## 🧱 **11. Cómo descargar los últimos cambios después de un merge**

Si tu PR fue aprobado:

```bash
git checkout <tu-rama>
git pull origin main
```

Así actualizas tu rama con la última versión del proyecto.

---

## ✅ **12. Checklist antes de subir tu código**

☑️ Tu código corre sin errores
☑️ Probaste tus rutas o pantallas
☑️ No subes `.env`, `build`, ni `node_modules`
☑️ Commit claro y rama correctamente nombrada
☑️ PR con descripción y base branch correcta

---

## 💬 **13. Contacto y coordinación**

- **Tech Lead (Jona):** revisa todos los PRs y coordina merges.
- Comunicación: Discord o WhatsApp del equipo.
- Se recomienda actualizar el repositorio **al inicio y al final de cada jornada**.

---

## 🎯 **14. Ejemplo de flujo completo**

```bash
# Día de trabajo Frontend
git checkout frontend
git pull origin frontend
git checkout -b feature/player-attack
# ... trabajas ...
git add .
git commit -m "feat: add attack animation"
git push -u origin feature/player-attack
# Vas a GitHub → abres Pull Request hacia `frontend`
```

---

# 🧾 **Conclusión**

👉 Si todos siguen esta guía, **evitaremos conflictos, pérdidas de trabajo y errores de sincronización**.
Mantendremos el proyecto ordenado, profesional y listo para la entrega final.
