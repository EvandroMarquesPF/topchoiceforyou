# TopChoiceForYou 🩺

Hub de reviews editoriais de saúde e lifestyle ("Health Review Hub"), com foco em SEO.

## Funcionalidades

- **Hub de reviews** com avaliações editoriais de suplementos e produtos de saúde
- **Blog** com artigos aprofundados (`blog/`), ex.: guia sobre memória/NGF com canonical para `topchoiceforyou.com/memory/`
- **SEO avançado**: schema JSON-LD, canonical links, Open Graph e Google Analytics
- **Páginas legais** em `dist/legal/` (Privacy, Terms, Disclaimer)

## Stack

- HTML estático + **Tailwind CSS via CDN**
- Google Fonts (Merriweather / Open Sans)
- Deploy: **Netlify** (`netlify.toml`)

## Estrutura

```
TopChoiceForYou/
├── index.html           # Hub de reviews (pagina principal)
├── blog/                # Artigos do blog
├── dist/                # Assets estaticos usados pelo site
│   ├── assets/          # Imagens, icones (favicon, logos, diagramas)
│   └── legal/           # Páginas legais (privacy, terms, disclaimer)
└── netlify.toml         # Configuracao de deploy
```

> `dist/` é **parte essencial** do site (o `index.html` referencia seus assets) — não remova.

## Como Rodar Localmente

```bash
# Opcao 1: Python
python -m http.server 8080

# Opcao 2: Node
npx serve -l 8080
```

Ou use o `start.bat` (abre `http://localhost:8080` automaticamente).

## Deploy

O site é publicado automaticamente via Netlify (push na branch `main`), conforme `netlify.toml`.
