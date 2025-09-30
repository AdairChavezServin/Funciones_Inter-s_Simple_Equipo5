interésSimple = function(Va = NULL, Vf = NULL, r = NULL, n = NULL){
  
  # Valor Futuro:
  if(is.null(Vf)){      # Especificamos que, en caso de que el Valor futuro del ejercicio 
    #dado no exista, el código ejecutará este bloque de código, calculando así dicho valor.
    Vf = Va*(1+(r*n))   # Fórmula para calcular el Valor Futuro
    return(Vf)          # Imprime el valor calculado
  }
  
  # Valor Actual:
  else if(is.null(Va)){      # Especificamos que, en caso de que el Valor actual 
    #del ejercicio dado no exista, el código ejecutará este bloque de código, calculando 
    #así dicho valor.
    Va = Vf/(1+(r*n))       # Fórmula para calcular el Valor Actual
    return(Va)               # Imprime el valor calculado
  }
  
  # Tasa de interés:
  else if(is.null(r)){      # Especificamos que, en caso de que la Tasa de interés 
    #del ejercicio dado no exista, el código ejecutará este bloque de código, calculando 
    #así dicho valor.
    r = (((Vf/Va) - 1)/n)   # Fórmula para calcular la Tasa de interés
    return(r)               # Imprime el valor calculado
  }
  
  # Cantidad de periodos:
  else if(is.null(n)){      # Especificamos que, en caso de que la Cantidad de periodos 
    #del ejercicio dado no exista, el código ejecutará este bloque de código, calculando 
    #así dicho valor.
    n = (((Vf/Va) - 1)/r)   # Fórmula para calcular la Cantidad de periodos
    return(n)               # Imprime el valor calculado
  }
}

---
  
  
```{python}
def interesSimple(Va=None, Vf=None, r=None, n=None):
  
  # Valor Futuro:
  if Vf is None:
  Vf = Va * (1 + r * n)
print("El Valor futuro es:")
return Vf

# Valor Actual:
elif Va is None:
  Va = Vf / (1 + r * n)
print("El Valor actual es:")
return Va

# Tasa de interés:
elif r is None:
  r = (Vf / Va - 1) / n
print("El Valor de la tasa es:")
return r

# Cantidad de periodos:
elif n is None:
  n = (Vf / Va - 1) / r
print("El número de periodos es:")
return n
```