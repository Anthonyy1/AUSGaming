<?php
include 'global/confi.php';
include 'global/conexion.php'; 
include 'carrito.php';
include 'templates/cabezera.php';   
 ?>
        <h2 class="h3 title mb-4 text-center">Productos</h2>
        <br>
         <?php if($mensaje=""){?>
        <div class="alert alert-success">
            <?php echo ($mensaje) ; ?>

       <a href="mostrarcarrito.php" class="badge badge-success">Ver carrito</a>
      </div>
         <?php } ?>

       <div class="row">
         
       <?php
        $sentencia=$pdo->prepare("SELECT * FROM productos");
        $sentencia->execute();
        $listaproductos=$sentencia->fetchALL(PDO::FETCH_ASSOC);
        //print_r($listaproductos);

       ?>
       <?php foreach($listaproductos as $producto){?>
        <div class="col-3">
               <div class="card">
                   <img 
                   title="<?php echo $producto['Nombre'];?>"
                   alt="<?php echo $producto['Nombre'];?>"
                   class="card-img-top"
                   src="<?php echo $producto['Imagen'];?>"
                   height="317px"
                   >
                   <div class="card-body">
                       <span><?php echo $producto['Nombre'];?></span>
                       <h5 class="card-title">Q<?php echo $producto['Precio'];?></h5>
                       <p class="card-text"><?php echo $producto['Descripcion'];?></p>
                                <form action="" method="post">

                                     <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['ID'],COD,KEY);  ?>">
                                     <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['Nombre'],COD,KEY); ?>">
                                     <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['Precio'],COD,KEY);  ?>">
                                     <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1,COD,KEY); ?>">
                                     <button class="btn btn-secondary"  name=" btnAccion" value="Agregar" type="submit">Añadir al carrito</button>
                                </form>
                   </div>
               </div>
           </div>
        <?php }?>
       </section>
       </div>
    </div>
    </main>
</body>
</html>