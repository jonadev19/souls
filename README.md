# 🕹️ Souls Knight

## Proyecto final --- Desarrollo de Software Multiplataforma

Un juego tipo **Souls Knight** desarrollado con **Flutter + Flame** en
el frontend y **Express + Supabase + MercadoPago** en el backend.\
Creado por un equipo de 3 programadores con enfoque en integración de
backend, pagos en línea y experiencia de juego fluida multiplataforma.

---

## 📁 Estructura del proyecto

    souls-knight/
    ├── backend/         → Servidor Express.js (Supabase + MercadoPago)
    ├── frontend/        → Juego desarrollado con Flutter y Flame
    ├── docs/            → Documentación, diseño y diagramas
    ├── .gitignore
    └── README.md        → Este archivo

---

## ⚙️ Tecnologías principales

---

Área Tecnología Descripción

---

Frontend (Juego) 🧱 Flutter + Flame Motor de juego 2D
multiplataforma

                    flame, flame_audio,          Librerías para animaciones,
                    flame_tiled, flutter_dotenv  mapas y sonido

Backend (API) 🟩 Node.js + Express Servidor REST con
integración de pagos

                    supabase-js                  Autenticación y base de
                                                 datos

                    mercadopago                  Procesamiento de pagos

Infraestructura 🪶 Render / Railway Despliegue del backend

                    Supabase                     Hosting de base de datos y
                                                 auth

Documentación 📘 Markdown + Figma Guías, diagramas y diseño
visual

---

---

## 🚀 Instalación y ejecución

### 🔧 Requisitos previos

- Node.js 18+\
- Flutter 3.22+\
- Cuenta en Supabase\
- Cuenta en MercadoPago Developers\
- (opcional) Cuenta en Render o Railway

### 🧩 Clonar el proyecto

```bash
git clone https://github.com/tu_usuario/souls-knight.git
cd souls-knight
```

### 🛠️ Backend

```bash
cd backend
npm install
cp .env.example .env
npm run dev
```

Tu API correrá en <http://localhost:3000>

### 🎮 Frontend

```bash
cd frontend/souls_game
flutter pub get
cp .env.example .env
flutter run
```

---

## 🔑 Variables de entorno

### 🧠 Backend (`backend/.env`)

    PORT=3000
    SUPABASE_URL=https://xxxx.supabase.co
    SUPABASE_SERVICE_KEY=super-secret-key
    MERCADOPAGO_ACCESS_TOKEN=TEST-1234567890
    FRONTEND_URL=http://localhost:8080

### 🕹️ Frontend (`frontend/.env`)

    API_BASE_URL=https://souls-knight-backend.onrender.com
    SUPABASE_URL=https://xxxx.supabase.co
    SUPABASE_ANON_KEY=public-anon-key
    MERCADOPAGO_PUBLIC_KEY=TEST-public-key-1234

---

## 📋 Funciones principales

### 🎮 Gameplay

- Modo historia con niveles progresivos\
- Sistema de energía, vida y monedas\
- Enemigos con IA básica\
- Animaciones fluidas (idle, walk, attack, hit)\
- Sonidos y efectos ambientales

### 💾 Backend

- Autenticación con Supabase\
- Guardado de progreso y estadísticas del jugador\
- Control de inventario / monedas\
- API REST para comunicación con Flutter

### 💳 Pagos

- Integración con MercadoPago Sandbox\
- Compra de ítems o mejoras desde la app\
- Validación de pagos en el backend

---

## 👥 Equipo de desarrollo

---

Rol Nombre Responsabilidad

---

👨‍💻 Tech Lead / Jonathan Aaron Coordinación del equipo,
Full Stack Pérez Méndez arquitectura, integración
frontend-backend, despliegue.

🎮 Frontend \[Nombre del Desarrollo del juego con Flutter +
Developer compañero 1\] Flame.

🧠 Backend \[Nombre del Desarrollo de la API con Express +
Developer compañero 2\] Supabase + MercadoPago.

---

---

## 🧱 Estructura de ramas en GitHub

Rama Propósito

---

main Código estable listo para entrega
backend Desarrollo del servidor y API
frontend Desarrollo del juego
docs Documentación, diseño y diagramas

---

## 🗓️ Cronograma de desarrollo (3 semanas)

---

Semana Entregables

---

1 Configuración del entorno, estructura base,
endpoints iniciales y mapa del primer nivel

2 Integración Flutter ↔ Backend, sistema de
progreso y login

3 Integración MercadoPago, pruebas,
despliegue y documentación final

---

---

## 🧾 Licencia

Este proyecto se desarrolla únicamente con fines educativos.
