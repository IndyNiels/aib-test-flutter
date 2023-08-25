# All In Biking - Prueba técnica para Flutter con la API de Pokémon

## Cambios realizados


1. Añadido clases para estilos bajo la carpeta styles contenida en lib, para separar los estilos. Importado en los archivos correspondientes para su uso. 
2. Creado un wrapper alrededor del listView en la pagina de detalle para renderizar los botones en la parte inferior de la pantalla. 
3. Cambiado la json_key the back_default a front_default para peticionar la imagen de frente del pokemon segun la pokeapi. 
4. Trabajar con Row, Columns, Containers y sus estilos para generar las vistas necesarias. Usado los parametros indicados en figma (pixeles, fuentes, etc) en la medida de lo posibile para generar una vista fidedigna al diseño. 
5. Cambiado la peticion a la API en el repositorio: 

    Se puede cambiar el response.results por pokemons en el archivo api_pokemons_repository.dart para visualizar correctamente el listado Pokemon.  


    ````dart
    return Right(response.results ?? []);
    ```

    por  


    ```dart
    return Right(pokemons ?? []);
    ```

    Pero esto romple la Pagina de detalle y viceversa. 



## Que hubiese hecho de haber tenido tiempo. 

1. Añadir la libreria Shimmer para añadir transiciones a las imagenes mientras hacemos le fetch de la API.
2. Observar mejoras posibles en las requests a la API para implementar de forma coherente las peticiones tanto en la Pagina de lista como en la Pagina de detalle.   
3. Añadir requests para implementar las abilidades Pokemon. 
4. Añadir las keys necesarias en la serialisación del json en pokemon.dart.
5. En general estructurar mejor el codigo para asegurarse de que existe 'separation of concerns'
6. Pasar el objecto Pokemon ya 'fectheada' en la lista a la pagina de Detalle para no peticionar dos veces a la API. 

