# All In Biking - Prueba técnica para Flutter con la API de Pokémon

Esta prueba tiene como objetivo ampliar el código proporcionado para agregar nuevas funcionalidades a una pequeña aplicación en Flutter. La aplicación utilizará la API de PokeAPI y se espera que el resultado final se publique en un repositorio público en GitHub, el cual será evaluado como parte de la prueba.

La API que deberás utilizar es la siguiente:

```
https://pokeapi.co/docs/v2#info
```

Diseño a implementar
```
https://www.figma.com/file/ZojzAWIWwHUoFxdtC2d2vb/MockUps?type=design&node-id=108-13373&mode=design&t=DAPUmiQLoHAI3Nac-0
```

## Instrucciones

1. Comienza por descargar el proyecto.
2. Un vez creas terminado el desarrollo, comparte un enlace al repositorio público.

## Estructura de la Aplicación

La aplicación consta de dos pantallas principales:

### Pantalla Principal:

- Listado de Pokémon.
- Paginación.
- Al hacer clic en un elemento del listado, se navegará a la pantalla de detalle.

### Pantalla de Detalle:

- Muestra información detallada del Pokémon seleccionado.

## Funcionalidades Requeridas

Para el desarrollo, es necesario agregar las siguientes funcionalidades al código proporcionado:

- Cada elemento de la lista debe mostrar la información del Pokémon correspondiente.
- Realizar mejoras en la estructura y diseño de la pantalla de detalle.

**No hay restricciones en cuanto al uso de librerías de terceros. La cantidad de información mostrada por cada pokemon en el listado y el detalle se deja a elección del participante**

## Criterios de Evaluación

El proceso de evaluación se centrará en los siguientes aspectos:

- Correcta implementación del state management de la aplicación.
- Mejoras sustanciales en la estructura y organización del código.
- Se valorará un buen uso de los commits, los cuales deben reflejar el progreso durante el desarrollo.

## Observaciones Adicionales

Además de las instrucciones anteriores, te invitamos a agregar un archivo README en el repositorio con las observaciones que consideres pertinentes. Por ejemplo:

- ¿Qué enfoque seguirías si tuvieras más tiempo para completar la prueba?

Una vez que hayas finalizado el proyecto, simplemente envía el enlace al repositorio de GitHub.

¡Te deseamos mucha suerte y éxito en la prueba!




### My own comments 


- 


The pokemon object return two different results whether we are in the list page or in the details page. I want to know the reason for this, because we are actually calling the api from pokemon. 

Posible answers: 
Maybe the requests is different. -> We can change the request. 
Maybe the serialization is different for both views. 

Aren't we calling the same object? The variable is maybe different each time we make the request...


Where does it specify when it fetches the list one by one? 



Compare the fetch for list and the the fetch for details page. 


The pokemon object is created for both of them.
The object variable can be null so they are null. Something is happending in the request such that the other data is not present. (But names are somehow?)  WHere are the other instances of name? 




### Posible solutions
The api endpoint is different.. They are in fact different
One is th the api endpoint. The other uses the url from the list...
So observe the first api endpoint.




## Ahora que la api ha cambiado ya no tengo la url. Pero la sigo necesitando para acceder a los datos en la pagina de detalle. Como lo hago? 

1. Introducir la url en el objecto Pokemon para no cambiar nada del codigo. 
2. Pasar el mismo objecto a la pantalla de detalle --- Probablemente requiera de trastear con el state. 
3. I don't need to make a second request. That's the thing



## Cambios realizados


1. Añadido clases para estilos bajo la carpeta styles contenida en lib, para separar los estilos. 
2. Creado un wrapper alrededor del listView en la pagina de detalle para renderizar los botones en la parte inferior de la pantalla. 
3. Cambiado la json_key the back_default a front_default para peticionar la imagen de frente del pokemon segun la pokeapi. 



## Que hubiese hecho de haber tenido tiempo. 

1. Añadir la libreria Shimmer para añadir transiciones a las imagenes mientras hacemos le fetch de la API.
2. Observar mejor las request a la API para implementar de forma cogerente las peticiones tanto en la Pagina de lista como en la Pagina de detalle.   

Se puede cambiar el response.results por pokemons con una introducción que he realizado para observar correctamente la Pagina de Lista cambiando 
````
  return Right(response.results ?? []);
```

por 

```
  return Right(pokemons ?? []);
```

Pero esto romple la Pagina de detalle. 