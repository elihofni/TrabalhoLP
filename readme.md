# Linguagens de Programação - Profº Bruno

### ROTEIRO
	- Instale haskell
	- Entre no terminal 
	  ```
	  > ghci	
	  > :load verificador-pdl-haskell.hs
	  > :set prompt "ghci "
	  ```
	
	- Chame `verifica` com os parâmetros necessários

### PARTICIPANTES
    - Elihofni 
    - Gabriel

### Esses são exemplos de entrada do nosso programa
           W                                   R                                          pi                              RESPOSTA ESPERADA

      ------------    --------------------------------------------------      --------------------------        ------------------------------------

      [1, 2]          [(1, 2, "a")]                                           [["a"]]                           ([],"Eh valida")
      
      [1, 2, 3]       [(1, 2, "a"), (2, 3, "b")]                              [["a", "b"]]                      ([],"Eh valida")
      
      [1, 2, 3, 4]    [(1, 2, "a"), (2, 4, "c"), (1, 3, "b"), (3, 4, "c")]    [["a", "c"], ["b", "c"]]                 ([],"Eh valida")
      
      [1, 2]          [(1, 2, "a"), (1, 3, "b")]                              [["a"], ["b"]]                    ([("?",(2,3,"b"))],"Vertices e arestas incompativeis")
      
      [1, 2, 3, 4]    [(1, 2, "a"), (1, 3, "b"), (2, 4, "c"), (3, 4, "c")]    [["a", "c"], ["b", "c"]]          ([("c",(1,3,"b"))],"Nao eh valida") 
      
      [1, 2, 3]       [(1, 2, "a"), (2, 3, "b")]                              [["a", "b", "c"]]                 ([("c",(-1,-1,"c"))],"Nao eh valida")