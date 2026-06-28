#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Servidor local del Configurador · Empresa Aumentada por IA
Creado por Jesús García Fernández — https://jesusgarciafernandez.com

Sirve configurador.html y guarda config.json y 00_CONFIGURACION_NEGOCIO.md
DIRECTAMENTE en la carpeta del proyecto. Sin dependencias externas: solo
necesita Python 3 (incluido de fábrica en macOS y la mayoría de Linux).

Uso:  python servidor.py    (o usa el lanzador de tu sistema)
Cierra con Ctrl+C en esta ventana.
"""
import http.server
import socketserver
import json
import threading
import webbrowser
from pathlib import Path
from urllib.parse import urlparse

BASE = Path(__file__).resolve().parent
# El configurador vive en su propia subcarpeta (p. ej. /configurador).
# config.json se guarda junto al configurador (BASE); el archivo que lee la IA
# (00_CONFIGURACION_NEGOCIO.md) se guarda en la RAÍZ del proyecto (carpeta superior).
PROYECTO = BASE.parent
PORT = 8765

socketserver.TCPServer.allow_reuse_address = True


class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=str(BASE), **kwargs)

    def log_message(self, *args):
        pass  # sin ruido en consola

    def do_GET(self):
        if urlparse(self.path).path == '/':
            self.path = '/configurador.html'
        return super().do_GET()

    def do_POST(self):
        if urlparse(self.path).path != '/guardar':
            self.send_error(404)
            return
        try:
            length = int(self.headers.get('Content-Length', 0))
            payload = json.loads(self.rfile.read(length).decode('utf-8'))
            config = payload.get('config', {})
            md = payload.get('md', '')
            (BASE / 'config.json').write_text(
                json.dumps(config, ensure_ascii=False, indent=2), encoding='utf-8')
            (PROYECTO / '00_CONFIGURACION_NEGOCIO.md').write_text(md, encoding='utf-8')
            print('  ✓ Guardado: config.json + 00_CONFIGURACION_NEGOCIO.md')
            self._json(200, {'ok': True})
        except Exception as e:
            self._json(500, {'ok': False, 'error': str(e)})

    def _json(self, code, obj):
        body = json.dumps(obj, ensure_ascii=False).encode('utf-8')
        self.send_response(code)
        self.send_header('Content-Type', 'application/json; charset=utf-8')
        self.send_header('Content-Length', str(len(body)))
        self.end_headers()
        self.wfile.write(body)


def main():
    url = f'http://localhost:{PORT}/'
    try:
        with socketserver.TCPServer(('127.0.0.1', PORT), Handler) as httpd:
            print('=' * 56)
            print('  Configurador · Empresa Aumentada por IA')
            print('  Servidor activo en:', url)
            print('  Al pulsar "Guardar en el proyecto" se escribe')
            print('  config.json aquí y 00_CONFIGURACION_NEGOCIO.md en la raíz del proyecto.')
            print('  Para cerrar: Ctrl+C en esta ventana.')
            print('=' * 56)
            threading.Timer(0.8, lambda: webbrowser.open(url)).start()
            httpd.serve_forever()
    except KeyboardInterrupt:
        print('\nServidor detenido. ¡Hasta luego!')
    except OSError as e:
        print('No se pudo iniciar el servidor:', e)
        print(f'Puede que el puerto {PORT} esté ocupado por otra aplicación.')
        try:
            input('Pulsa Enter para salir...')
        except EOFError:
            pass


if __name__ == '__main__':
    main()
