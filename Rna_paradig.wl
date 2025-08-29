SeedRandom[7];                             (* Fijamos la semilla para reproducibilidad *)
classes = {"0","1"};                       (* Etiquetas de salida: clase "0" o "1" *)

(* ---------- AND ---------- *)
dataAND = {                                 
  <|"Input" -> {0., 0.}, "Output" -> "0"|>, 
  <|"Input" -> {0., 1.}, "Output" -> "0"|>,   
  <|"Input" -> {1., 0.}, "Output" -> "0"|>,   
  <|"Input" -> {1., 1.}, "Output" -> "1"|>    
};

perceptron = NetChain[                       (* Definimos un perceptrOn simple *)
  {LinearLayer[2], SoftmaxLayer[]},          (*  Definimos la capa lineal + softmax para 2 clases *)
  "Input" -> {2},                            (* 2 entradas reales *)
  "Output" -> NetDecoder[{"Class", classes}] (* salida decodificada a "0" o "1" *)
];

netAND = NetTrain[perceptron, dataAND,       (* Se entrena la red para AND*)
  MaxTrainingRounds -> 2000,                 (* numero de iteraciones de entrenamiento *)
  BatchSize -> 4,                            (* usamos las 4 combinaciones por lote *)
  ValidationSet -> None,                     (* no separamos validacion por dataset tan pequeño *)
  Method -> {"ADAM","LearningRate"->0.05}    (* optimizador ADAM con tasa 0.05 *)
];

Table[{x, y, netAND[<|"Input" -> {x,y}|>]}, {x,0,1}, {y,0,1}]  (* Se prueba AND *)


(* ---------- OR ---------- *)
dataOR = {                                  
  <|"Input" -> {0., 0.}, "Output" -> "0"|>,   
  <|"Input" -> {0., 1.}, "Output" -> "1"|>,   
  <|"Input" -> {1., 0.}, "Output" -> "1"|>,  
  <|"Input" -> {1., 1.}, "Output" -> "1"|>   
};

netOR = NetTrain[perceptron, dataOR,         (* Se entrena la red para OR *)
  MaxTrainingRounds -> 2000,
  BatchSize -> 4,
  ValidationSet -> None,
  Method -> {"ADAM","LearningRate"->0.05}
];

Table[{x, y, netOR[<|"Input" -> {x,y}|>]}, {x,0,1}, {y,0,1}]  (* Se prueba OR *)


(* ---------- XOR ---------- *)
dataXOR = {
  <|"Input" -> {0., 0.}, "Output" -> "0"|>,   
  <|"Input" -> {0., 1.}, "Output" -> "1"|>,   
  <|"Input" -> {1., 0.}, "Output" -> "1"|>,   
  <|"Input" -> {1., 1.}, "Output" -> "0"|>    
};

mlp = NetChain[                               (* Red multicapa para XOR *)
  {LinearLayer[8], Tanh, LinearLayer[2], SoftmaxLayer[]},  (* capa oculta + no linealidad + salida *)
  "Input" -> {2},
  "Output" -> NetDecoder[{"Class", classes}]
];

netXOR = NetTrain[mlp, dataXOR,               (* Se entrena la red para  XOR *)
  MaxTrainingRounds -> 2000,
  BatchSize -> 4,
  ValidationSet -> None,
  Method -> {"ADAM","LearningRate"->0.05}
];

Table[{x, y, netXOR[<|"Input" -> {x,y}|>]}, {x,0,1}, {y,0,1}]  (* Probamos XOR *)


