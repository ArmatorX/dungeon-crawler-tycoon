# Dungeon Crawler Tycoon

## Gameplay

**Descripción**: Dungeon Crawler Tycoon (nombre temporal) es un juego de gestión de recursos y construcción donde tomas el rol de un lich que diseña y administra su mazmorra para atraer aventureros. Inspirado en títulos como *Roller Coaster Tycoon*, *Sim City* y *Cities: Skylines*, pero con mecánicas únicas: balancea la dificultad de tu dungeon, gestiona recursos como reputación, oro, tesoros y magia, y decide si los intrusos sobreviven (aumentando tu fama) o mueren (obteniendo sus botines).

### Características principales:

- **Dos modos de juego**: Construcción (diseño libre) y Exploración (tower-defense con aventureros invadiendo).
- **Aventureros dinámicos**: Desde genéricos hasta especiales con comportamientos únicos, y héroes poderosos que desafían tu estrategia.
- **Recursos estratégicos**: Reputación, oro, tesoros y magia, cada uno con trade-offs que impactan tu progreso.
- **Creatividad sin límites**: Personaliza habitaciones con trampas, enemigos y loot, incentivando diseños ingeniosos.

**Origen**: Surgió durante la GMTK Game Jam 2023 (tema: "*Roles Reversed*"), explorando la perspectiva del "villano" en un dungeon crawler. Podés ver el [prototipo original aquí](https://armatorx.itch.io/nabokos).

## Detalles técnicos

El proyecto está creado en Godot 4.4. Todavía no está definido si el juego será en 2D o 3D.

## Roadmap

El proyecto busca ser un juego pulido y de alcance intermedio, desarrollado en 2-3 años con un prototipo básico funcional en 6 meses.

### Fase 1: Sistemas Básicos (Mes 1-2)

**Prioridad F1**: Crear una base sólida de código para poder prototipar mecánicas rápido y eficientemente. Establecer mecánicas básicas sin pulir.

- **Game Loop mínimo**:
    - Modos *Construcción* (editar mazmorra) y *Exploración* (aventureros entran), que van alternando en el tiempo (los aventureros llegan en waves).
    - Recursos básicos: Magia (regenera con tiempo) y Oro (obtenido al matar aventureros).
- **Dungeon**:
    - Editor de mazmorra en grid (cuadrícula) con habitaciones y pasillos.
    - Sistema de guardado/recuperación del layout (ejemplo: JSON).
- **Aventureros**:
    - Sistema de reputación: extremadamente básico.
    - IA mínima: caminan aleatoriamente, evitan obstáculos.
    - Interacción básica: si tocan un tesoro, lo roban; si tocan una trampa, mueren.

### Fase 2: UI/UX y Feedback (Mes 3-4)

**Prioridad F2**: Diseñar interfaces y agregar efectos visuales/sonoros que ayuden al jugador a entender lo que pasa.

- **Interfaz mínima**:
    - Barra de recursos (Magia, Oro) y botón para cambiar modo.
    - Tooltips al pasar el mouse (ejemplo: "Esta sala tiene una trampa").
- **Feedback**:
    - Efectos simples (ejemplo: explosión cuando una trampa mata a un aventurero).
    - Sonidos básicos (ejemplo: pasos, muerte, sonido al recolectar oro).

### Fase 3: Balance y experimentación (Mes 5-6)

**Prioridad F3**: Validar el core loop del juego, y su jugabilidad básica. Asegurarse de que el juego es divertido antes de continuar.

- **Balance inicial**:
    - Ajustar valores (ejemplo: Magia regenera en 10 segundos; un aventurero da 5 de Oro).
    - Spawn de aventureros cada X tiempo en modo Exploración.
- **Contenido mínimo**:
    3 tipos de salas: Vacía, Trampa (mata aventureros), Tesoro (atrae aventureros).
    1 tipo de aventurero "especial" (ejemplo: Codicioso: siempre busca tesoros).

### Stretch Goals

    - Tipos de aventureros.
    - 1 tipo de trampa interactiva (ejemplo: pinchos que se activan al pasar).