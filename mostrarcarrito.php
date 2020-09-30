<?php
include 'global/confi.php';
include 'carrito.php';
include 'templates/cabezera.php'
 ?>

<br>
<br>
<br>
             
             <h3>Lista del carrito</h3>
                 
                 <?php if(!empty($_SESSION['CARRITO'])){?>

             <table class="table table-light table-bordered">
               <tbody>
                 <tr>
                    <th width="40%">Descripcion</th>
                    <th width="15%" class="text-center">Cantidad</th>
                    <th width="20%" class="text-center">Precio</th>
                    <th width="20%" class="text-center">Total</th>
                    <th width="5%"  class="text-center">--</th>
                 </tr>
                 <?php $total=0;?>
                 <?php foreach($_SESSION['CARRITO'] as $indice=>$producto ){ ?>
                 <tr>
                    <td width="40%"><?php echo $producto['NOMBRE'] ?></td>
                    <td width="15%" class="text-center"><?php echo $producto['CANTIDAD'] ?></td>
                    <td width="20%" class="text-center"><?php echo $producto['PRECIO'] ?></td>
                    <td width="20%" class="text-center"><?php echo number_format($producto['PRECIO']*$producto['CANTIDAD'],2); ?></td>
                     <td>
                    <form action="" method="post">

                    <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['ID'],COD,KEY);  ?>">

                    <button
                    class="btn btn-danger"
                    type="submit"
                    name="btnAccion"
                    value="Eliminar"
                    >Eliminar</button>
                    </form>
                    </td>

                    
                 </tr>
                 <?php $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);?>
                 <?php } ?>
                 <tr>
                     <td colspan="3" align="right"><h3>Total</h3></td>
                     <td align="right"><h3><?php echo number_format($total,2); ?></h3></td>
                     <td></td>
                 </tr>
                  <tr>
                     <td colspan="5">
                        <form action="pagar.php" method="post">
                           <div  class="registro" role="alert">
                               <div class="form-group">
                               <label for="my-input">Nit de cliente:</label>
                                  <input class="datos" class="form-control" type="text" name="Nit" placeholder="Ingresar Nit" required><br>
                                  <label for="my-input">Nombre de cliente:</label>
                                  <input class="datos" class="form-control" type="text" name="nombre" placeholder="Ingresar Nombre" required><br>
                                  <label for="my-input">Dirección de cliente:</label>
                                  <input class="datos" class="form-control" type="text" name="Direccion" placeholder="Ingresar Dirección" required><br>
                                 <label for="my-input">Correo de cliente:</label>
                                  <input class="datos" class="form-control" type="email" name="email" placeholder="Ingresar Correo" required><br>
                                  <button class="regist" type="submit" value="proceder" name="btnAccion">Proceder Compra</button>
                              </div>
                              <small id="emailHelp"
                              class="form-text text-muted"
                              >
                               Datos
                              </small>
                           </div>
                              
                        </form>
                     </td>
                  </tr>
                 
               </tbody>
             </table>

                 <?PHP }else{ ?>
                  <div class="alert alert-success" >
                     Aún no tienes productos en tu carrito
                  </div>
                 <?php } ?>