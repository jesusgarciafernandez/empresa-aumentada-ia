# 📖 Guía de Inicio: Empresa Aumentada por IA

Bienvenido a la **Empresa Aumentada por IA**, un sistema inteligente que organiza el conocimiento de
**cualquier negocio** y te ayuda en el día a día: procesos internos, productos/servicios, incidencias
y casos, propuestas comerciales, atención al cliente y formación.

Esta guía te explica, **sin conocimientos técnicos**, cómo cargar el sistema en tu asistente de IA y
empezar a usarlo.

---

> ✅ **Importante:** esta carpeta incluye archivos de arranque (`CLAUDE.md`, `GEMINI.md`, `AGENTS.md`),
> uno por herramienta. Al abrir la carpeta, tu IA lee el suyo y **se configura sola**. No tienes que
> copiar ni pegar ninguna instrucción de inicio.

## 🚀 1. Cómo cargar el sistema en tu asistente de IA

### Opción A: Claude (Cowork / Code / Projects)
1. Abre Claude y crea/abre un **Proyecto** o una sesión de **Cowork**.
2. **Selecciona o sube esta carpeta** completa (`EMPRESA AUMENTADA`).
3. Claude leerá `CLAUDE.md` y el sistema se inicializará solo. Escribe tu primera consulta.

### Opción B: Antigravity / Gemini
1. Abre **Antigravity**.
2. **Abrir Carpeta** → selecciona `EMPRESA AUMENTADA`.
3. Lee `GEMINI.md` automáticamente. Ya puedes escribir en el chat.

### Opción C: Codex u otros editores con IA
1. **Archivo > Abrir Carpeta** → `EMPRESA AUMENTADA`.
2. El asistente lee `AGENTS.md` y se inicializa.

---

## ⚙️ 2. Configura tu negocio (lo primero y más importante)

Escribe en el chat:
> *"Ayúdame a configurar mi negocio"*

La IA te hará una **entrevista guiada** (preguntas sencillas, una a una) y rellenará por ti
`00_CONFIGURACION_NEGOCIO.md`. Si tu sector tiene un **pack** en `packs/`, te lo propondrá para
arrancar con material y reglas específicas. Si no lo hay, no pasa nada: el sistema funciona igual en
modo genérico, adaptándose a la documentación que subas.

(También puedes editar `00_CONFIGURACION_NEGOCIO.md` a mano si lo prefieres.)

## 🎯 3. Pruébalo (casos de demostración)

Copia en el chat los prompts de `demo/prompts_demo.md`, por ejemplo:
- *"Tengo un cliente con una incidencia. Guíame paso a paso sobre qué pedirle y qué hacer."*
- *"Voy a reunirme con un cliente nuevo con este perfil. ¿Qué necesidades reviso y qué le propongo?"*
- *"Explícame este concepto de mi sector como si fuera nuevo en el equipo."*

## 📂 4. Sube la información real de tu negocio

El verdadero valor llega cuando usas **tus** documentos:
1. Abre la carpeta `conocimiento/`.
2. Guarda cada archivo en la subcarpeta que corresponda (lee el `_LEEME.md` de cada una):
   - Catálogos, fichas y condiciones → `02_catalogo_productos_servicios/`.
   - Procedimientos internos → `01_procedimientos_internos/`.
   - Contactos de proveedores → `10_proveedores_y_partners/`.
   - Tus modelos de correo o plantillas → `08_plantillas_propias/`.
3. Formatos recomendados: **PDF claro** o **Markdown (.md)**.
4. Pídele a la IA: *"crea la ficha de este documento en el índice documental"* (skill `ingesta-conocimiento`).

---

## ⚠️ 5. Recordatorio importante de uso

- **Asistente de apoyo:** la IA te ahorra tiempo buscando información y redactando.
- **Revisión humana obligatoria:** las decisiones finales siempre las validas tú o un responsable.
- **Protección de datos:** trabaja con datos mínimos. Antes de pegar información real, lee
  `documentacion/GUIA_PRIVACIDAD_DATOS.md`.
