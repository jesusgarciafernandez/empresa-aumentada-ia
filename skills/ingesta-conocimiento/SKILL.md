---
name: ingesta-conocimiento
description: >-
  Ayuda al usuario a incorporar correctamente documentos nuevos a la base de conocimiento. Úsala
  cuando el usuario diga "he subido un documento", "dónde guardo esto", "añade esto al conocimiento"
  o "crea su ficha en el índice". Propone la categoría/carpeta adecuada, crea la ficha en el índice
  documental y avisa de datos personales sensibles.
---

# Skill: Ingesta de Conocimiento

**Objetivo:** Convertir un documento suelto en conocimiento "buscable" por la IA, bien clasificado y con su ficha.

## Cuándo se activa
- El usuario sube o menciona un documento nuevo.
- Pide ayuda para clasificar o indexar material.

## Cómo trabaja
1. **Revisa** el documento (tipo, contenido, para qué sirve).
2. **Propone categoría** = subcarpeta de `conocimiento/` (procedimientos, catálogo, casos, comercial,
   atención, normativa, formación, plantillas propias, casos tipo, proveedores).
3. **Sugiere** línea/categoría de negocio y proveedor/partner si aplica.
4. **Avisa de datos sensibles**: si el documento contiene datos personales reales innecesarios,
   recomienda anonimizar (ver `documentacion/GUIA_PRIVACIDAD_DATOS.md`).
5. **Crea la ficha** en `conocimiento/00_indice_documental.md` con el modelo estándar (ruta, tipo,
   categoría, proveedor, uso, nivel de fiabilidad, fecha/versión).
6. Confirma al usuario dónde ha quedado y con qué nivel de fiabilidad.

## Salida
- Recomendación de carpeta destino.
- Ficha lista para el índice documental (o ya añadida).
- Aviso de privacidad si procede.

## Límites
No sube ni mueve archivos sin que el usuario lo confirme. No asigna fiabilidad "Alto" a borradores o material sin confirmar.

## Ejemplo
*Usuario:* "He añadido el nuevo catálogo de servicios, indéxalo."
*Skill:* Propone guardarlo en `02_catalogo_productos_servicios/`, crea su ficha en el índice y marca fiabilidad Alta.
