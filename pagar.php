<?php
include 'global/confi.php';
include 'global/conexion.php'; 
include 'carrito.php';
include 'templates/cabezera.php';

 ?>

    <?php
    if($_POST){
        $total=0;
        $SID=session_id();
        $Correo=$_POST['email'];
        $nombre=$_POST['nombre'];
        $nit=$_POST['Nit'];
        $direccion=$_POST['Direccion'];
        foreach($_SESSION['CARRITO'] as $indice=>$producto){
            $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);  
        }   
        $sentencia=$pdo->prepare("INSERT INTO `tblventas` (`ID`, `Clave`, `Fecha`, `Correo`, `Total`, `status`) VALUES (NULL,:Clave,NOW(),:Correo,:Total, 'pendiente');");
        $sentencia->bindParam(":Clave",$SID);
        $sentencia->bindParam(":Correo",$Correo);
        $sentencia->bindParam(":Total",$total);
        $sentencia->execute();
        $idVenta=$pdo->lastInsertId();

        foreach($_SESSION['CARRITO'] as $indice=>$producto){
            $sentencia=$pdo->prepare("INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`)
                            VALUES (NULL,:IDVENTA,:IDPRODUCTO,:PRECIOUNITARIO,:CANTIDAD, '0');");
        $sentencia->bindParam(":IDVENTA",$idVenta);
        $sentencia->bindParam(":IDPRODUCTO",$producto['ID']);
        $sentencia->bindParam(":PRECIOUNITARIO",$producto['PRECIO']);
        $sentencia->bindParam(":CANTIDAD",$producto['CANTIDAD']);
        
        $sentencia->execute();


        }
       
    }   
    ?>
    <div class="jumbotron text-center" >
        <h1 class="display-4">Compra Terminada</h1>
        <hr class="my-4">
        <p class="lead">La cantidad a pagar Es:
            <h4>Q<?php echo number_format($total,2);?></h4>
        </p>
            <p class="card-tittle text-left">Sus Datos son:</p>
            <h6 class="card-tittle text-left">NIT:       <?php echo $nit;?></h6>
            <h6 class="card-tittle text-left">Nombre:    <?php echo $nombre;?></h6>
            <h6 class="card-tittle text-left">Direccion: <?php echo $direccion;?></h6>
            <h6 class="card-tittle text-left">Correo:    <?php echo $Correo;?></h6>
            
    </div>
    
