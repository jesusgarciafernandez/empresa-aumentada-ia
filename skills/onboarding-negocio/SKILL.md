---
name: onboarding-negocio
description: >-
  Entrevista guiada para configurar el sistema a medida de CUALQUIER negocio, sin conocimientos
  técnicos. Úsala cuando el archivo 00_CONFIGURACION_NEGOCIO.md está sin rellenar (quedan [corchetes]),
  cuando el usuario diga "ayúdame a configurar mi negocio / a empezar / a montar esto", o cuando pida
  adaptar el sistema a su sector. Detecta el sector, rellena la configuración, activa los agentes
  pertinentes y propone instalar un pack sectorial si existe.
---

# Skill: Onboarding del Negocio (auto-montaje)

**Objetivo:** Que cualquier persona, sin saber nada técnico, deje el sistema listo para su negocio en una conversación corta.

## Cuándo se activa
- `00_CONFIGURACION_NEGOCIO.md` contiene `[corchetes]` sin rellenar.
- El usuario pide ayuda para configurar, empezar o adaptar el sistema a su sector.

## Dos vías para configurar (ofrécelas al inicio)
Antes de empezar la entrevista, menciona que hay **dos formas** de configurar y deja elegir:

- **A) Entrevista guiada por chat** (lo que sigue en esta skill): tú haces las preguntas y rellenas
  `00_CONFIGURACION_NEGOCIO.md`. Ideal si el usuario prefiere conversar.
- **B) Formulario visual** (`configurador/configurador.html`, en la carpeta `configurador/`): un formulario
  que el usuario rellena y exporta `config.json` + `00_CONFIGURACION_NEGOCIO.md` listos. Ideal si prefiere
  algo visual o trabajar sin chat. Cómo se usa: ver `configurador/CONFIGURADOR_LEEME.md`. Resumen rápido:
  ejecutar el lanzador de su sistema (`configurador/Iniciar configurador (Windows/Mac/Linux)`) y pulsar
  **Guardar en el proyecto** (guarda el `00_CONFIGURACION_NEGOCIO.md` en la raíz del proyecto); sin Python,
  funciona en modo descarga y luego se mueve el `.md` a la raíz y el `config.json` a `configurador/`.

Si el usuario ya trae un `config.json` o un `00_CONFIGURACION_NEGOCIO.md` hechos con el formulario,
**no repitas la entrevista**: léelos, confirma lo que falte y continúa con la activación de agentes y pack.

## Cómo trabaja (entrevista guiada)
Haz preguntas **sencillas, una a una**, en lenguaje natural. No abrumes. Sigue este orden y ve
rellenando `00_CONFIGURACION_NEGOCIO.md` con cada respuesta:

1. **Nombre del negocio** y, en una frase, qué hace.
2. **Sector / actividad** (ej. clínica, despacho, tienda online, restaurante, inmobiliaria…).
   → Con esto, comprueba si existe `packs/<sector>/` y, si lo hay, **ofrécelo**.
3. **Qué vende u ofrece** (productos o servicios principales).
4. **A quién sirve** (cliente / paciente / usuario / uso interno).
5. **Quién usará el sistema** y cómo se firman los correos.
6. **Tono** y idioma(s) de comunicación.
7. (Opcional) **Herramientas internas**, **proveedores**, **política comercial**, **jurisdicción y
   normativa**.

Tras cada bloque, confirma brevemente lo que has anotado. Al final:
- Guarda todos los datos en `00_CONFIGURACION_NEGOCIO.md` (sustituye los `[corchetes]`).
- **Activa o desactiva agentes**: p. ej. desactiva el Agente Comercial si es uso interno.
- Si hay pack, propón instalarlo (skill/flujo de instalación del pack).
- Si NO hay pack para su sector, dilo con tranquilidad: el sistema funcionará en **modo genérico**
  adaptándose a la documentación que suba. Ofrece crear 1-2 documentos de ejemplo a medida.
- Recuérdale el siguiente paso: subir su documentación a `conocimiento/` (skill `ingesta-conocimiento`).

## Salida
- `00_CONFIGURACION_NEGOCIO.md` completado y validado.
- Resumen de qué ha quedado configurado y qué falta (si algo).
- Recomendación de pack (si aplica) y de primeros documentos a subir.

## Límites
No inventa datos del negocio: si el usuario no sabe algo, lo deja como "No aplica" o pendiente.
No toca agentes, skills ni workflows del núcleo; solo la configuración y la activación de piezas.

## Ejemplo
*Usuario:* "Tengo una clínica dental, ayúdame a configurar esto."
*Skill:* Hace la entrevista, detecta el sector salud, rellena la config, avisa de las líneas rojas
sanitarias y propone subir el catálogo de tratamientos y los consentimientos como primer conocimiento.
