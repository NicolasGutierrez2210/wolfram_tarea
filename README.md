# Redes Neuronales para compuertas logicas (Wolfram Language)

Este trabajo implementa redes neuronales para aprender las compuertas logicas **AND**, **OR** y **XOR** usando **Wolfram Language**.

- **AND / OR** → resueltas con un **perceptrón simple** (capa lineal + softmax).  
- **XOR** → resuelta con un **perceptrón multicapa (MLP)** con capa oculta y activación no lineal (`Tanh`).  

## Archivos del repositorio

- `redes_logicas.wl` → script con el código de las 3 compuertas, con comentarios explicativos.  
- *(opcional)* `RedesLogicas.nb` → notebook en formato Wolfram (para abrir en Mathematica / Wolfram Cloud).  

## ⚙️ Requisitos

Se necesita tener acceso a alguno de estos entornos para ejecutarlo:  

- Wolfram Mathematica 
- Wolfram Cloud
- WolframScript (para ejecutar archivos `.wl` desde la terminal)  

## Ejecucion

### 1. Con WolframScript (desde terminal)

```bash
wolframscript -file redes_logicas.wl
```
### 2. En Wolfram Desktop o Cloud
1. Abre el archivo `redes_logicas.wl. ` 
