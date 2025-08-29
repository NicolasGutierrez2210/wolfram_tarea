# Redes Neuronales para compuertas logicas (Wolfram Language)

Este trabajo implementa redes neuronales para aprender las compuertas logicas **AND**, **OR** y **XOR** usando **Wolfram Language**.

- **AND / OR** → resueltas con un **perceptrón simple** (capa lineal + softmax).  
- **XOR** → resuelta con un **perceptrón multicapa (MLP)** con capa oculta y activación no lineal (`Tanh`).  

## Archivos del repositorio

- `Rna_paradig.wl` → script con el código de las 3 compuertas, con comentarios explicativos.  
- *(opcional)* `Rna_paradig.nb` → notebook en formato Wolfram (para abrir en Mathematica / Wolfram Cloud).  

## Requisitos

Se necesita tener acceso a alguno de estos entornos para ejecutarlo:  

- Wolfram Mathematica 
- Wolfram Cloud
- WolframScript (para ejecutar archivos `.wl` desde la terminal)  

## Ejecucion

### 1. Con WolframScript (desde terminal)

```bash
wolframscript -file Rna_paradig.wl
```
### 2. En Wolfram Desktop o Cloud
1. Abre el archivo `Rna_paradig.wl `
2. Ejecuta el código (Shift+Enter).

### Resultados obtenidos 
## Compuerta AND
```bash
(0,0) -> 0
(0,1) -> 0
(1,0) -> 0
(1,1) -> 1
```
### Compuerta OR
```bash
(0,0) -> 0
(0,1) -> 1
(1,0) -> 1
(1,1) -> 1
```
### Compuerta XOR
```bash
(0,0) -> 0
(0,1) -> 1
(1,0) -> 1
(1,1) -> 0
```
> COSA A TENER EN CUENTA :
En la ejecucióO real puede aparecer como listas anidadas pero equivale a lo mismo de las tablas de verdad.


