# Redes Neuronales para compuertas logicas (Wolfram Language)

Este trabajo implementa redes neuronales para aprender las compuertas logicas **AND**, **OR** y **XOR** usando **Wolfram Language**.

- **AND / OR** → resueltas con un perceptron simple (capa lineal + softmax).  
- **XOR** → resuelta con un perceptron multicapa (MLP) con capa oculta y activacion no lineal (`Tanh`).  

## Archivos del repositorio

- `Rna_paradig.wl` → script con el código de las 3 compuertas, con comentarios explicativos.  
- `Rna_paradig.nb` → notebook en el formato de Wolfram (para abrir en Mathematica / Wolfram Cloud).  

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
En la ejecucion real puede aparecer como listas anidadas pero equivale a lo mismo de las tablas de verdad.

## Conclusion

Este trabajo permitio comprobar como las redes neuronales pueden aprender el comportamiento de compuertas logicas basicas.  
En el caso de **AND** y **OR**, un perceptron simple fue suficiente debido a que son funciones linealmente separables. Sin embargo, la compuerta **XOR** requirio un perceptron multicapa (MLP) con una capa oculta y activacion no lineal, evidenciando la necesidad de mayor capacidad de representacion en problemas no lineales.  

Las salidas del entrenamiento en Wolfram se presentan como listas anidadas, pero corresponden directamente a las tablas de verdad de cada compuerta. Esto valida que los modelos convergieron correctamente y que la implementacion en formato `.wl` es funcional y adecuada para compartir y reproducir en diferentes entornos.  

En conclusion, el trabajo evidencia la relacion entre la teoria de separabilidad lineal y la practica con redes neuronales, mostrando de forma clara como se modelan funciones logicas fundamentales mediante distintos niveles de complejidad en las arquitecturas.

