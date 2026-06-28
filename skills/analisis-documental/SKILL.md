---
name: analisis-documental
description: >-
  Interpreta documentos complejos de la base de conocimiento (contratos, fichas de producto/servicio,
  condiciones, manuales) para extraer respuestas concretas a una pregunta. Úsala al leer un documento
  extenso y detectar condiciones, límites, requisitos y exclusiones aplicables a un caso.
---

# Skill: Análisis Documental

**Objetivo:** Interpretar documentos complejos para extraer respuestas concretas, señalando siempre lo que requiere revisión humana.

## Cuándo se activa
- Hay que leer contratos o condiciones generales/particulares.
- Se analizan fichas de producto/servicio o manuales extensos.

## Entrada
- Documento objetivo (ruta del archivo).
- Pregunta específica a responder.

## Salida
- Resumen aplicable a la pregunta.
- Puntos clave extraídos del texto.
- Condiciones ocultas (límites, requisitos, plazos).
- Exclusiones o excepciones detectadas.
- Elementos que requieren obligatoriamente revisión humana.

## Límites
No extrae conclusiones legales definitivas. No da algo por seguro si el texto es ambiguo o depende de un documento no aportado.

## Ejemplo
*Usuario:* "Analiza este contrato y dime si incluye soporte fuera del horario laboral."
*Skill:* "Sí, según la cláusula 5, salvo festivos" + límites y condiciones a revisar.
