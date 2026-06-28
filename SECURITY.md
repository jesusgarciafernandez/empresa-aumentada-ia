# Política de seguridad

Gracias por ayudar a mantener seguro este proyecto y a sus usuarios.

## Alcance

**Empresa Aumentada por IA** es un sistema basado en archivos (documentación, plantillas,
agentes y prompts) más un pequeño configurador local en Python/HTML. No es un servicio en
línea ni almacena datos en servidores: todo se ejecuta en el equipo del usuario.

## Cómo reportar una vulnerabilidad

Si detectas un problema de seguridad o privacidad —por ejemplo, una fuga de datos
personales en un archivo de ejemplo, un riesgo en `configurador/servidor.py`, o cualquier
comportamiento que pueda exponer información sensible— **no abras una issue pública**.

Escribe directamente a:

- **contacto@jesusgarciafernandez.com**

Incluye, si puedes: descripción del problema, pasos para reproducirlo y posible impacto.
Intentaré responder con prontitud y acordar contigo una divulgación responsable.

## Buenas prácticas para quien usa el sistema

- **No subas datos reales** (de clientes, pacientes o expedientes) al repositorio. Tu
  configuración real (`00_CONFIGURACION_NEGOCIO.md` y `configurador/config.json`) está
  excluida por `.gitignore`; mantenla así.
- El **configurador** (`servidor.py`) escucha solo en `127.0.0.1` (tu propio equipo). No lo
  expongas a Internet ni cambies el bind a `0.0.0.0`.
- Trata la documentación de `conocimiento/` como información interna: revisa qué compartes
  antes de hacer público cualquier *fork*.
- Aplica siempre la `documentacion/GUIA_PRIVACIDAD_DATOS.md` al trabajar con datos personales.

## Versiones soportadas

Se da soporte a la **última versión publicada** (ver `documentacion/CHANGELOG.md`).
