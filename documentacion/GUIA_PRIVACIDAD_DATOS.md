# 🔒 Guía de Privacidad y Protección de Datos

> **Léela antes de usar el sistema con datos reales.** Está escrita en lenguaje sencillo, sin
> tecnicismos. No es asesoramiento jurídico: ante dudas serias, consulta a tu asesoría o al
> responsable de protección de datos de tu negocio.

## Por qué esto importa en cualquier negocio
Casi todos los negocios tratan datos personales (nombres, contactos, datos económicos y, en algunos
sectores, datos de salud). La normativa de protección de datos (RGPD/LOPD en la UE, u otra según tu
jurisdicción) te obliga a tratarlos con cuidado. Una IA es una herramienta de apoyo potentísima, pero
**debes saber qué información puedes darle y cuál no**, especialmente si usas una IA en la nube.

## Regla de oro
> **Trabaja con los datos mínimos imprescindibles.** La IA puede ayudarte perfectamente sin saber el
> nombre completo, el documento de identidad o la dirección exacta de tu cliente. Sustitúyelos por
> datos genéricos.

En vez de:
> *"Redacta un correo a Antonio Pérez García, DNI 12345678X, de Calle Mayor 3, sobre su caso…"*

Escribe:
> *"Redacta un correo a un cliente sobre una incidencia en su pedido pidiéndole fotos y la factura."*

Luego tú pegas el nombre real al enviarlo desde tu correo. La IA hace el trabajo igual de bien.

## ✅ Qué SÍ puedes hacer con tranquilidad
- Consultar procedimientos, condiciones de producto/servicio y normativa.
- Pedir redacciones de correos, checklists y argumentarios **con datos genéricos** ("el cliente", "la empresa").
- Analizar contratos y fichas de producto (no contienen datos personales de clientes).
- Formarte y practicar simulaciones.

## ⛔ Qué deberías EVITAR (sobre todo en IA en la nube)
- Pegar **datos sensibles** (salud, ideología, datos económicos detallados) de una persona.
- Pegar **documentos de identidad, números de contrato o cuentas bancarias** reales sin necesidad.
- Subir documentos con datos personales de terceros sin haberlos **anonimizado**.
- Guardar en `conocimiento/` expedientes reales con datos identificables.

## Cómo anonimizar en 10 segundos
- Nombres → "el cliente", "la empresa", "el tercero".
- Documentos / contratos / cuentas → bórralos o pon "[dato omitido]".
- Direcciones → "su domicilio", "el local".
- Datos sensibles → descríbelos en general solo si es imprescindible, sin detalles.

## Canal seguro para documentación sensible
Cuando tengas que **enviar** documentación con datos personales, usa el canal seguro que hayas
definido en `00_CONFIGURACION_NEGOCIO.md` (portal de cliente, email cifrado…), no WhatsApp ni correo
ordinario para datos especialmente protegidos.

## Qué hace la IA de este sistema para protegerte
- El Agente de Cumplimiento te avisa de riesgos normativos.
- La skill `control-calidad-respuestas` revisa que no se expongan datos personales innecesarios.
- La IA usa datos genéricos siempre que puede y te recuerda anonimizar cuando detecta datos reales.

---
*Esta guía es orientativa. La responsabilidad del tratamiento de datos es del negocio. Si tu sector
tiene un pack en `packs/`, revisa también sus requisitos específicos de privacidad.*
