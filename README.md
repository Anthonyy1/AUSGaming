<? php
incluir  'global / confi.php' ;
incluir  'global / conexion.php' ;
incluir  'carrito.php' ;
incluir  'templates / cabezera.php' ;   
 ?>
        < h2  class = " h3 title mb-4 text-center " > Productos </ h2 >
        < Br >
         <? php  if ( $ mensaje = "" ) { ?>
        < div  class = " alerta alerta-éxito " >
            <? php  echo ( $ mensaje ); ?>

       < Un  href = " mostrarcarrito.php " clase =" insignia-éxito " > Ver Carrito </ a >
      </ div >
         <? php } ?>

       < div  class = " fila " >
         
       <? php
        $ sentencia = $ pdo -> prepare ( "SELECT * FROM productos" );
        $ sentencia -> ejecutar ();
        $ listaproductos = $ sentencia -> fetchALL ( PDO :: FETCH_ASSOC );
        // print_r ($ listaproductos);

       ?>
       <? php  foreach ( $ listaproductos  como  $ producto ) { ?>
        < div  class = " col-3 " >
               < div  class = " tarjeta " >
                   < img 
                   title = " <? php  echo  $ producto [ 'Nombre' ]; ?> "
                   alt = " <? php  echo  $ producto [ 'Nombre' ]; ?> "
                   class = " card-img-top "
                   src = " <? php  echo  $ producto [ 'Imagen' ]; ?> "
                   altura = " 317px "
                   >
                   < div  class = " card-body " >
                       < span > <? php  echo  $ producto [ 'Nombre' ]; ?> </ span >
                       < h5  class = " card-title " > Q <? php  echo  $ producto [ 'Precio' ]; ?> </ h5 >
                       < p  class = " card-text " > <? php  echo  $ producto [ 'Descripcion' ]; ?> </ p >
                                < acción de formulario  = "" método = " publicación " >

                                     < input  type = " hidden " name = " id " id = " id " value = " <? php  echo  openssl_encrypt ( $ producto [ 'ID' ], COD , KEY );   ?> " >
                                     < input  type = " hidden " name = " nombre " id = " nombre " value = " <? php  echo  openssl_encrypt ( $ producto [ 'Nombre' ], COD , KEY ); ?> " >
                                     < input  type = " hidden " name = " precio " id = " precio " value = " <? php  echo  openssl_encrypt ( $ producto [ 'Precio' ], COD , KEY );   ?> " >
                                     < input  type = " hidden " name = " cantidad " id = " cantidad " value = " <? php  echo  openssl_encrypt ( 1 , COD , KEY ); ?> " >
                                     < button  class = " btn btn-secondary "   name = " btnAccion " value = " Agregar " type = " submit " > Añadir al carrito </ button >
                                </ formulario >
                   </ div >
               </ div >
           </ div >
        <? php } ?>
       </ sección >
       </ div >
    </ div >
    </ main >
</ cuerpo >
</ html >
