# Guía de contribución

¡Gracias por tu interés en **Empresa Aumentada por IA**! Este proyecto crece con
la comunidad, sobre todo con **nuevos packs sectoriales**. Aquí tienes cómo
colaborar.

## Formas de contribuir

- **Proponer un pack sectorial nuevo** (hostelería, inmobiliaria, ecommerce,
  industria, agencia…). Es la aportación más valiosa.
- **Mejorar packs existentes** (`seguros`, `clinica`, `despacho`).
- **Mejorar skills, workflows, agentes o plantillas** del núcleo.
- **Corregir documentación**, enlaces rotos o erratas.
- **Reportar fallos** o **sugerir mejoras** mediante una *issue*.

## Antes de empezar

1. Lee `documentacion/ARQUITECTURA.md` para entender cómo encajan núcleo, packs y
   configuración.
2. Toda afirmación del sistema debe basarse en documentación: respeta esa filosofía
   en lo que aportes.
3. Usa **datos siempre ficticios** en ejemplos. Nombra los archivos de muestra con
   sufijos como `_Ejemplo` o `_Fake`. **Nunca** incluyas datos reales de clientes,
   precios o personas.

## Cómo proponer un pack sectorial

Un pack vive en `packs/<sector>/` y replica la estructura del núcleo. Como mínimo:

```
packs/<sector>/
├── PACK.md              # Vocabulario, líneas rojas y ejemplos del sector
├── README.md            # Qué incluye el pack y cómo activarlo
├── conocimiento/        # Documentos de ejemplo (ficticios)
├── workflows/           # Flujos específicos del sector
└── demo/                # Prompts y casos de demostración
```

Toma `packs/seguros/` o `packs/clinica/` como referencia.

## Flujo de trabajo

1. Haz un *fork* del repositorio.
2. Crea una rama descriptiva: `git checkout -b pack-hosteleria` o `fix/enlace-faq`.
3. Realiza tus cambios siguiendo el estilo de los archivos existentes.
4. Comprueba que no rompes enlaces internos ni añades datos reales.
5. Abre un *Pull Request* describiendo qué aportas y por qué.

## Estilo

- Español claro y cercano, sin tecnicismos innecesarios (el público no es técnico).
- Markdown bien formado; cada subcarpeta de `conocimiento/` lleva su `_LEEME.md`.
- Líneas de ~100 caracteres cuando sea posible, por legibilidad de los *diffs*.

## Licencia de tus contribuciones

Al contribuir, aceptas que tu aportación se publique bajo la licencia del
proyecto (**CC BY-NC-SA 4.0**). Ver `LICENSE`.

¿Dudas? Abre una *issue* o escribe a contacto@jesusgarciafernandez.com.
