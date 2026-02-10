# ChessDu – Guía paso a paso (versión para no programadores)

Esta guía está pensada para construir **tu app personal** de entrenamiento de ajedrez de forma local (sin publicar en internet al inicio).

## 1) Objetivo del proyecto

Construir una app móvil para:
- **Alumnos**: entrenar táctica, medir progreso y estudiar de forma inteligente.
- **Entrenadores**: dar seguimiento a alumnos y enviar planes de estudio.

## 2) Enfoque recomendado para tu perfil (básico en programación)

Para avanzar rápido y poder instalar en Android de forma local:

- **Frontend móvil**: Flutter (una sola base de código para Android y iOS).
- **Base de datos local**: SQLite (con Drift o sqflite).
- **Estado**: Riverpod (simple y escalable).
- **Ajedrez**: librería `chess`/`chessground` para tablero y validación de jugadas.
- **Sin internet al inicio**: todo local con archivos JSON/PGN de ejercicios.

> Si prefieres Kotlin nativo, también sirve. Flutter se recomienda porque reduce complejidad inicial.

---

## 3) Funcionalidades principales (prioridad realista)

## MVP Fase 1 (imprescindible)

1. Registro local de perfil de alumno.
2. Temporizador de estudio (Pomodoro + bloques personalizados).
3. Lista de ejercicios tácticos local.
4. Resolver ejercicios con tablero interactivo.
5. Guardar resultados (correcto/incorrecto, tiempo por ejercicio).
6. Favoritos.
7. Repetición espaciada básica.
8. Estadísticas simples: tiempo total + aciertos por tema.

## Fase 2 (alto valor)

1. Reentrenar por filtros: fallidos, favoritos, lentos.
2. Racha diaria + logros.
3. Sugerencias anti-distracción.
4. Recompensas personales al cumplir sesión.
5. Modo “a ciegas” básico.
6. Personalización de tablero/piezas/sonido.

## Fase 3 (entrenadores)

1. Gestión de alumnos (local o en red local).
2. Clases personalizadas.
3. Envío de paquetes de ejercicios.
4. Dashboard por alumno y grupo.
5. Importar/exportar progreso.

## Fase 4 (avanzado)

1. Detección de patrones de mate más frecuentes.
2. Buscador de posiciones repetidas.
3. Estimación de Elo por tema y polígonos de frecuencia.
4. Retos entre jugadores.

---

## 4) Traducción de tus requisitos a módulos

## Módulo A: Sesiones de estudio
- Pomodoro
- Bloques definidos por usuario
- Estadísticas de tiempo
- Recomendaciones para mantener foco

## Módulo B: Motor de ejercicios
- Carga de ejercicios por tema
- Validación de jugadas legales
- Mensajes pedagógicos:
  - “Jugada ilegal” + motivo
  - “Buena jugada, pero hay una mejor”
- Si falla primera jugada: mostrarla y exigir variantes ganadoras

## Módulo C: Repetición inteligente
- Espaciada (por defecto)
- Pájaro carpintero
- Por tema / fallidos / favoritos / lentos / correctos

## Módulo D: Progreso
- Tiempo de estudio por día/mes/año
- Elo estimado por tema
- Racha y logros
- Compartir resumen diario/mensual

## Módulo E: Entrenador
- Lista de alumnos
- Paquetes de ejercicios
- Estadísticas individuales y grupales
- Libros de estudio (ejercicios + teoría)

---

## 5) Plan de trabajo (8 semanas)

## Semana 1
- Instalar herramientas.
- Crear proyecto base Flutter.
- Diseñar navegación (pantallas principales).

## Semana 2
- Implementar login local simple (sin servidor).
- Modelo de datos local (usuario, ejercicios, sesiones).

## Semana 3
- Tablero de ajedrez + carga de ejercicios.
- Resolver ejercicio y guardar resultado.

## Semana 4
- Pomodoro y bloques personalizados.
- Registro de tiempo de estudio.

## Semana 5
- Favoritos y reentrenamiento por fallidos.
- Repetición espaciada básica.

## Semana 6
- Estadísticas de progreso.
- Racha y logros básicos.

## Semana 7
- Personalización visual de tablero.
- Exportar/importar datos localmente.

## Semana 8
- Pulido general + instalación APK local.
- Preparación para añadir módulo entrenador.

---

## 6) Diseño de pantallas recomendadas

1. **Splash + logo**
2. **Inicio** (resumen rápido)
3. **Entrenar ahora**
4. **Métodos de estudio**
5. **Resultados del ejercicio**
6. **Estadísticas**
7. **Biblioteca de temas**
8. **Perfil**
9. **Panel entrenador** (fase posterior)

---

## 7) Cómo instalar localmente en Android (sin Play Store)

1. Activar modo desarrollador en Android.
2. Activar depuración USB.
3. Conectar celular al PC.
4. Ejecutar:
   - `flutter build apk --debug`
   - `flutter install`
5. O copiar APK manualmente e instalar (habilitar “fuentes desconocidas”).

---

## 8) Estructura de carpetas sugerida

```text
chessdu/
  lib/
    core/
      config/
      theme/
      utils/
    features/
      auth/
      dashboard/
      training/
      exercises/
      spaced_repetition/
      stats/
      coach/
    data/
      local/
      models/
      repositories/
  assets/
    logo/
    sounds/
    boards/
    pieces/
  docs/
```

---

## 9) Qué dejar para después (para no bloquearte)

- Integraciones complejas con APIs externas desde el día 1.
- Algoritmos avanzados de Elo por tema antes del MVP.
- Sistema multiusuario online completo al inicio.

---

## 10) Sobre tu logo e imagen principal

Ya dejé un **concepto editable en SVG** dentro de `assets/chessdu_logo_concept.svg` para que puedas usarlo como punto de partida.

Ideas aplicadas en el concepto:
- Reina/caballo abstracto + cerebro (entrenamiento mental)
- Paleta azul-violeta (tecnología + concentración)
- Subtítulo “entrena tu mente”

Si me compartes tu logo actual (PNG/SVG), en el siguiente paso puedo:
1. Ajustarlo al estilo final.
2. Preparar variaciones (icono app, splash, horizontal).
3. Exportar tamaños exactos para Android.

---

## 11) Próximo paso recomendado (muy concreto)

Empieza por este mini objetivo:

1. Crear proyecto Flutter.
2. Pantallas: Inicio + Entrenar + Estadísticas.
3. Cargar 20 ejercicios de prueba en JSON local.
4. Guardar tiempo y aciertos en SQLite.
5. Mostrar gráfico simple de progreso semanal.

Cuando eso funcione, avanzamos a repetición espaciada y logros.
