---
name: generacion-respuestas
description: >-
  Convierte lenguaje técnico en comunicación clara y empática para el destinatario final (email,
  WhatsApp, SMS o guion de llamada). Úsala cuando el usuario pida redactar un mensaje, solicitar
  documentación o dar una noticia delicada, siempre sin prometer resultados no confirmados y
  respetando el tono y la firma de la configuración del negocio.
---

# Skill: Generación de Respuestas

**Objetivo:** Convertir lenguaje técnico en comunicación clara y empática, adaptada al canal y al destinatario.

## Cuándo se activa
- Se pide redactar un email, WhatsApp o SMS.
- Se pide un guion para llamar a un cliente.
- Hay que solicitar documentación.
- Hay que dar una noticia delicada (ej. una negativa o un retraso).

## Entrada
- Canal (Email, WhatsApp, Llamada).
- Objetivo del mensaje (Informar, Pedir datos, Declinar).
- Datos o resoluciones a transmitir.

## Salida
- Texto final formateado y listo para enviar.
- Tono adaptado al canal y a la situación.
- Cierre con próximos pasos (llamada a la acción).
- Advertencias internas si procede (ej. "este mensaje no confirma un resultado").
- Firma según `00_CONFIGURACION_NEGOCIO.md`.

## Límites
Nunca promete resultados que el negocio no controla ni da por cerrado un caso sin confirmación.
Usa expresiones como "lo estamos gestionando" en lugar de "te lo vamos a solucionar".

## Ejemplo
*Usuario:* "Redacta un email pidiendo la documentación necesaria para este trámite."
*Skill:* Email cortés que explica por qué se pide cada documento y cuál es el siguiente paso.
