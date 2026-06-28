# Flujo: Consulta General

**Objetivo:** Resolver dudas abiertas, clasificar la intención y derivar si es necesario.
**Agentes implicados:** Director, (cualquier especialista según derivación).

**Datos de entrada:**
- Pregunta abierta del usuario (ej. "¿Cómo damos de baja a un cliente?").

**Pasos:**
1. El Agente Director lee e interpreta la consulta.
2. Identifica la categoría de la intención (ej. Procedimiento Interno).
3. Activa al especialista correspondiente (ej. Conocimiento Interno).
4. El especialista usa la skill `busqueda-inteligente` en `/conocimiento`.
5. Se extrae la respuesta del documento correspondiente.
6. Se aplica la skill `control-calidad-respuestas`.
7. Se devuelve la respuesta con próximos pasos recomendados.

**Plantilla de salida:** `respuesta_tecnica.md`

**Ejemplo de uso:**
*Usuario:* "¿Qué plazo hay para tramitar una devolución?"
*Sistema:* Localiza el procedimiento, lo resume y advierte de los pasos internos.
