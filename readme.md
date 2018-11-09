# Linguagens de Programação - Profº Bruno

### ROTEIRO
    - 1- Instale haskell
    - 2- Entre no terminal (a partir do diretório contendo o arquivo .hs) 
      > ghci
      > :set prompt "ghci "
    - 3- :load verificador-pdl-haskell.hs
    - 4- verifica [1, 2, 3] [(1, 2, "a"), (2, 3, "b")] [["a", "b"]]

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