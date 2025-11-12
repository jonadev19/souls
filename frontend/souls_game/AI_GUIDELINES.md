### Guía para trabajar conmigo — _Frontend (Flutter + Flame)_

> Esta guía define exactamente **cómo debo trabajar contigo dentro del frontend del proyecto Souls Knight**, qué puedo hacer, qué no puedo hacer y **cómo debo hacerlo**.
> Mi objetivo es ayudarte a construir un juego sólido, limpio y mantenible usando el stack de tecnologías que elegiste.

---

## 🧭 Objetivo

Mi rol es ayudarte a **desarrollar, organizar y documentar** todo el frontend del juego Souls Knight.
Debo generar código claro, modular y bien comentado que combine **Flutter**, **Flame**, **Supabase** y **MercadoPago**.
El código debe compilar sin errores y seguir una arquitectura limpia y profesional.

---

## ⚙️ Tecnologías que vamos a usar

### 🧩 **Frontend (principal)**

- **Flutter 3.x** → Framework principal.
- **Flame 1.16+** → Motor de juego 2D.
- **Flame Audio 2.1+** → Sonidos y efectos del juego.
- **Flame Tiled 1.10+** → Carga de mapas `.tmx`.
- **Provider 6.1+** → Manejo de estado simple.
- **flutter_dotenv 5.1+** → Variables de entorno.
- **supabase_flutter 2.5+** → Autenticación y base de datos.
- **http 1.2+** → Peticiones HTTP al backend.
- **path_provider 2.1+** → Acceso al sistema de archivos.
- **shared_preferences 2.3+** → Guardar progreso localmente.

### 🧩 **Backend conectado**

- **Node.js + Express.js**
- **Supabase (PostgreSQL + Auth)**
- **MercadoPago API**

### 🧩 **Herramientas de trabajo**

- **Git + GitHub** → Control de versiones y ramas.
- **Render / Vercel** → Despliegue del backend.
- **Android Studio / VSCode** → Desarrollo Flutter.
- **Figma** → Diseño visual y mockups.

---

## 📁 Estructura base del proyecto

```
lib/
 ┣ 📂game/
 ┃ ┣ 📂components/
 ┃ ┣ 📂levels/
 ┃ ┗ 📜souls_game.dart
 ┣ 📂models/
 ┣ 📂screens/
 ┃ ┣ 📂home/
 ┃ ┣ 📂settings/
 ┃ ┗ 📂shop/
 ┣ 📂services/
 ┃ ┣ 📜api_service.dart
 ┃ ┗ 📜storage_service.dart
 ┣ 📂utils/
 ┣ 📂widgets/
 ┗ 📜main.dart
```

---

## ✅ Lo que **sí debo hacer**

### 1️⃣ Seguir la estructura exacta

Debo colocar cada archivo en la carpeta correspondiente.
No creo carpetas nuevas fuera de `lib/` sin tu autorización.
Cada módulo del juego debe ser **independiente y reutilizable.**

---

### 2️⃣ Escribir código limpio, claro y en inglés

- Todos los nombres de clases, variables y funciones deben estar **en inglés**.
- Debo usar comentarios `///` o `//` para explicar cada bloque o clase.
- No debo dejar funciones sin documentación o sin tipos definidos.

**Ejemplo correcto:**

```dart
/// Player attack logic and hitbox detection
class PlayerAttack extends SpriteAnimationComponent { ... }
```

---

### 3️⃣ Mantener el patrón modular

| Carpeta     | Qué contiene                                   |
| ----------- | ---------------------------------------------- |
| `game/`     | Motor del juego, físicas, animaciones, niveles |
| `models/`   | Clases de datos (`Player`, `Enemy`, `Item`)    |
| `screens/`  | UI de Flutter (Home, Shop, Settings)           |
| `services/` | API, Supabase, almacenamiento local            |
| `utils/`    | Colores, constantes, logs                      |
| `widgets/`  | Componentes de UI reutilizables                |

---

### 4️⃣ Seguir las convenciones de código

| Elemento   | Convención             | Ejemplo                         |
| ---------- | ---------------------- | ------------------------------- |
| Variables  | `camelCase`            | `playerSpeed`, `enemyCount`     |
| Clases     | `PascalCase`           | `PlayerComponent`, `ShopScreen` |
| Constantes | `SCREAMING_SNAKE_CASE` | `MAX_HEALTH`, `PLAYER_SPEED`    |
| Archivos   | `snake_case`           | `player_component.dart`         |

---

### 5️⃣ Usar solo las dependencias aprobadas

```yaml
dependencies:
  flutter:
    sdk: flutter
  flame: ^1.33.0
  flame_audio: ^2.11.11
  flame_tiled: ^3.0.8
  flame_forge2d: ^0.19.2+1
  flutter_dotenv: ^6.0.0
  supabase_flutter: ^2.10.3
  http: ^1.6.0
  provider: ^6.1.2
  path_provider: ^2.1.5
```

Si necesito usar una librería nueva, **te lo consulto antes** de agregarla.

---

### 6️⃣ Aplicar buenas prácticas

- No usar `any` o `dynamic` innecesariamente.
- No repetir código: si se repite, crear un widget o helper.
- No dejar funciones vacías.
- Mantener consistencia en los nombres de archivos y rutas.
- Registrar todos los assets nuevos en el `pubspec.yaml`.
- Usar `flutter format .` antes de confirmar cambios.

---

### 7️⃣ Documentar todo archivo nuevo

Cada archivo nuevo debe empezar con un encabezado claro:

```dart
// -----------------------------------------------------------
// File: player_component.dart
// Description: Handles player movement, animation and attacks
// Author: AI Assistant (supervised by Jona)
// -----------------------------------------------------------
```

---

### 8️⃣ Escribir respuestas claras y útiles

Cuando genere código o explicaciones, debo:

- Ser **directo y técnico** (sin texto de relleno ni emojis dentro del código).
- Indicar **en qué ruta debe colocarse** el archivo.
- Escribir código **que compile y funcione** sin dependencias rotas.
- Explicar brevemente lo que hace cada parte.
- Preguntar antes si algo no está claro o si hay ambigüedad.

---

## 🚫 Lo que **NO debo hacer**

| 🚫 Acción                                           | Motivo                                          |
| --------------------------------------------------- | ----------------------------------------------- |
| Crear carpetas fuera de `lib/`                      | Rompe la estructura del proyecto                |
| Escribir código o comentarios en español            | El código debe ser internacionalizable          |
| Modificar `main.dart` sin permiso                   | Solo tú defines la configuración inicial        |
| Agregar dependencias sin consultarte                | Puede romper el entorno de compilación          |
| Subir archivos `.env` o binarios                    | Riesgo de seguridad o exceso de peso            |
| Escribir código sin comentarios                     | Dificulta el mantenimiento del equipo           |
| Reescribir código de otro miembro sin contexto      | Puede causar pérdida de avances                 |
| Copiar código de ejemplos sin adaptarlo al proyecto | Debe estar ajustado a la lógica de Souls Knight |
| Ignorar errores o warnings                          | Todos los errores deben corregirse o explicarse |

---

## 🧩 Cómo debo generar código

### ✅ Ejemplo correcto

```dart
// File: enemy_component.dart
// Description: Enemy movement and attack behavior

import 'package:flame/components.dart';
import 'package:flame/collisions.dart';

class Enemy extends SpriteComponent with CollisionCallbacks {
  double speed = 1.5;

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('images/enemy/enemy_idle.png');
    size = Vector2(48, 48);
    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    position.x -= speed;
    super.update(dt);
  }
}
```

### ❌ Ejemplo incorrecto

```dart
// enemigo feo
class Enemigo {
  var pos;
  update() {}
}
```

**Errores:**

- Nombre en español
- Sin tipos
- Sin Flame
- Sin comentarios
- No sigue las convenciones

---

## 🧱 Comunicación técnica

Cuando trabajemos juntos, debo:

- Hablarte con **claridad y precisión** (nada de adornos innecesarios).
- Escribir todas las explicaciones técnicas en inglés.
- Preguntar antes de asumir cosas importantes.
- Ofrecer ejemplos listos para copiar/pegar.
- Ser consistente con el estilo que ya usamos.

---

## 🧾 Flujo de trabajo contigo

1. Tú defines la tarea o módulo.
2. Yo genero el código, explico cómo integrarlo y dónde colocarlo.
3. Te muestro los pasos exactos para probarlo.
4. Tú decides si se aprueba o necesita ajustes.
5. Yo documento los cambios finales.

---

## 🔑 En resumen

✅ **Debo:**

- Mantener el código limpio, modular y bien documentado.
- Seguir las convenciones y estructura del proyecto.
- Usar solo las tecnologías aprobadas.
- Preguntarte antes de modificar partes críticas.

🚫 **No debo:**

- Tocar `main.dart` ni romper rutas.
- Usar dependencias nuevas sin tu permiso.
- Escribir código en español o sin comentarios.
- Romper la estructura o la arquitectura general.
