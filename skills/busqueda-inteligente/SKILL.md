---
name: busqueda-inteligente
description: >-
  Localiza información dentro de la base documental del negocio (carpeta /conocimiento). Úsala cuando
  el usuario pregunte por condiciones de un producto/servicio, procedimientos internos, requisitos,
  plantillas, normativa, contactos de proveedores o un caso tipo, y haya que encontrar de qué
  documento sale la respuesta.
---

# Skill: Búsqueda Inteligente

**Objetivo:** Localizar información relevante dentro de la base documental (`/conocimiento`) y devolverla con trazabilidad de la fuente.

## Cuándo se activa
- El usuario pregunta por condiciones, características o requisitos.
- Se piden procedimientos internos.
- Se busca plantillas, normativa o contactos de proveedores.
- Se requiere información sobre un caso tipo.

## Entrada (qué necesita)
- Término de búsqueda o concepto (ej. "devolución", "alta cliente", "garantía").
- Contexto opcional (ej. "línea de producto X", "proveedor Y").

## Salida (qué devuelve)
- Resumen de la información encontrada.
- Lista de documentos relevantes (con su ruta).
- Fragmentos exactos si están disponibles (trazabilidad).
- Nivel de confianza de la respuesta (Alto / Medio / Bajo según lo hallado).
- Qué información NO se ha encontrado.

## Límites
No inventa documentos ni asume que lo que no está en la base documental es falso. Si algo no aparece, simplemente "no consta".

## Ejemplo
*Usuario:* "Busca si tenemos algún protocolo para gestionar bajas de clientes."
*Skill:* Resumen del documento de procedimiento con los pasos clave, su ruta y el nivel de confianza.
