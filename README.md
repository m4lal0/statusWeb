# statusWeb

[![Debian Supported](https://img.shields.io/badge/Debian-Supported-blue?style=flat-square&logo=debian)](#)
[![By](https://img.shields.io/badge/By-m4lal0-green?style=flat-square&logo=github)](#)

<p align="center">
━━━━━┏┓━━━━━━━┏┓━━━━━━━━━━━━━┏┓┏┓┏┓━━━━┏┓━━
━━━━┏┛┗┓━━━━━┏┛┗┓━━━━━━━━━━━━┃┃┃┃┃┃━━━━┃┃━━
┏━━┓┗┓┏┛┏━━┓━┗┓┏┛┏┓┏┓┏━━┓━━━━┃┃┃┃┃┃┏━━┓┃┗━┓
┃━━┫━┃┃━┗━┓┃━━┃┃━┃┃┃┃┃━━┫━━━━┃┗┛┗┛┃┃┏┓┃┃┏┓┃
┣━━┃━┃┗┓┃┗┛┗┓━┃┗┓┃┗┛┃┣━━┃━━━━┗┓┏┓┏┛┃┃━┫┃┗┛┃
┗━━┛━┗━┛┗━━━┛━┗━┛┗━━┛┗━━┛━━━━━┗┛┗┛━┗━━┛┗━━┛
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
<br>
2 scripts hechos en Bash y Python, que tienen la misma función, la cual es saber si una URL Web está en línea.
</p>

## Instalación

```bash
git clone https://github.com/m4lal0/statusWeb
cd statusWeb ; chmod +x statusWeb.sh statusWeb.py
```

## Uso Script Bash
El script en bash cuenta con un menú de ayuda.

<p align="center">
<img src="images/helpPanel.png"
	alt="Help"
	style="float: left; margin-right: 10px;" />
</p>

Para poder usar el script es necesario usar el parametro -u ó --url y despues pasar como argumento la URL del sitio web a revisar:

```bash
./statusWeb.sh --url www.example.com
```

## Uso Script Python
Para poder usar el script solo es necesario colocar como argumento la URL del sitio web a revisar:

```bash
python3 statusWeb.py www.example.com
```