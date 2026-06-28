---
name: control-calidad-respuestas
description: >-
  Audita el borrador de respuesta antes de entregarlo al usuario para asegurar que cumple las líneas
  rojas del sistema (universales y del pack activo). Úsala SIEMPRE justo antes de devolver respuestas
  críticas (incidencias, condiciones de producto/servicio, cumplimiento) para detectar promesas
  falsas, lenguaje inadecuado, afirmaciones sin base documental o falta de aviso de revisión humana.
---

# Skill: Control de Calidad de Respuestas

**Objetivo:** Auditar la salida de la IA antes de mostrarla para asegurar el cumplimiento de las líneas rojas.

## Cuándo se activa
- Inmediatamente antes de devolver la respuesta final en consultas críticas
  (incidencias/casos, condiciones de producto/servicio, cumplimiento).

## Entrada
- Borrador de la respuesta generada por los agentes.

## Salida
- Respuesta aprobada, O BIEN
- Corrección, si detecta: promesas falsas, lenguaje inadecuado, falta de aviso de revisión humana,
  afirmaciones categóricas sin base documental, o tratamiento de datos personales innecesarios
  (ver `documentacion/GUIA_PRIVACIDAD_DATOS.md`).

## Checklist de validación
1. ¿Toda afirmación relevante cita un documento de `/conocimiento`?
2. ¿Se evita confirmar resultados que el negocio no controla?
3. ¿Incluye próximos pasos y, si aplica, aviso de revisión humana?
4. ¿El tono y la firma respetan `00_CONFIGURACION_NEGOCIO.md`?
5. ¿No expone datos personales innecesarios?
6. ¿Respeta las líneas rojas del **pack sectorial** activo, si lo hay?

## Límites
Es una validación de prudencia; la responsabilidad final de usar la respuesta recae en la persona del negocio.

## Ejemplo
*Borrador interno:* "Dile al cliente que está todo resuelto y se le abona mañana."
*Skill (corrige):* "Dile al cliente que su caso está en gestión y que le confirmaremos en cuanto tengamos respuesta."
