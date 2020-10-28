<%-- 
    Document   : compras_detalle
    Created on : 21/10/2020, 03:49:06 PM
    Author     : USUARIO
--%>
<%@page import="modelo.Compras_detalle"%>
<%@page import="modelo.Marcas" %>
<%@page import="modelo.Compras" %>
<%@page import="modelo.Producto" %>
<%@page import="java.util.HashMap" %>
<%@page import="javax.swing.table.DefaultTableModel" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Detalle de la Compra</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a class="navbar-brand" href="menu.jsp"><img src="imagenes/socios.png"></a>

        <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="productos.jsp" id="navbardrop" data-toggle="dropdown">
                    Productos
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="productos.jsp">Tabla Productos</a>
                    <a class="dropdown-item" href="marcas.jsp">Tabla Marcas</a>
                </div>    
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="ventas.jsp" id="navbardrop" data-toggle="dropdown">
                    Ventas
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="ventas.jsp">Tabla Ventas</a>
                    <a class="dropdown-item" href="ventas_detalle.jsp">Tabla Ventas Detalle</a>
                    <a class="dropdown-item" href="clientes.jsp">Tabla Clientes</a>     

                    <a class="nav-link dropdown-toggle text-body" href="empleados.jsp" id="navbardrop" data-toggle="dropdown">
                        Empleados
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="empleados.jsp">Tabla Empleados</a>
                        <a class="dropdown-item" href="puestos.jsp">Tabla Puestos</a>       
                    </div>        
                </div>    
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="compras.jsp" id="navbardrop" data-toggle="dropdown">
                    Compras
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="compras.jsp">Tabla Compras</a>
                    <a class="dropdown-item" href="compras_detalle.jsp">Tabla Compras Detalle</a>
                    <a class="dropdown-item" href="proveedores.jsp">Tabla Proveedores</a>
                </div>    
            </li>
        </ul>
        
    </nav>
          
        <div class="container">                        
        <br><h3 style="text-align: center;">Detalle de las Compras</h3><br>
        
        <a href="detalle.jsp" class="btn btn-info" role="button">Agregar</a>
              
        <a href="detalle.jsp" class="btn btn-danger" role="button"id="btn_eliminar" value="eliminar" onclick="javascript:if(!confirm('¿Desea Eliminar?'))return false">Eliminar</a><br><br>
                            
        
         <!-- Inicio de formulario: Modificar ventas -->
        <div class="modal fade" id="modal_ME">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form  action="sr_ventas_detalle" method="post" class="form-group" >
                           
                            <div class="modal-header" >
                            <h4 class="modal-title text-danger"><b>Modificar/Eliminar lista de compras</b></h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            
                <div class="modal-body">
                 <label><b>ID </b></label>
                  <input type="number" name="txt_id_cd" id="txt_id_vd" class="form-control" value="0" readonly>
                  <label><b>No. de la compra: </b></label>
                  <select name="drop_compra" id="drop_compra" class="form-control">
                                <%
                                    Compras comprasM = new Compras();
                                    HashMap<String,String> dropMo = comprasM.drop_compra();
                                    for(String i: dropMo.keySet()){
                                        out.println("<option value='" + i + "' >" + dropMo.get(i) +"</option>");
                                    }
                                %>
                                </select>   
                  <label><b>ID PRODUCTO</b></label>
                  <input type="number" name="txt_id_producto" id="txt_id_producto" class="form-control" value="0" readonly>              
                  <label><b>Producto: </b></label>
                  <select name="drop_producto" id="drop_producto" class="form-control">
                                <%
                                    Producto productosM = new Producto();
                                    HashMap<String,String> dropMod = productosM.drop_producto();
                                    for(String i: dropMod.keySet()){
                                        out.println("<option value='" + i + "' >" + dropMod.get(i) +"</option>");
                                    }
                                %>
                                </select>   
                  <label><b>Cantidad:</b></label>
                  <input type="text" name="txt_cantidad" id="txt_cantidad" class="form-control" required>
                  <label><b>Existencia:</b></label>
                  <input type="number" name="txt_existencia" id="txt_existencia" class="form-control" required>
                  <label><b>Descripcion:</b></label>
                  <input type="text" name="txt_descripcion" id="txt_descripcion" class="form-control" required>
                  <label><b>Imagen: </b></label>
                  <input type="file" name="txt_imagen" id="txt_imagen" class="form-control">
                  <label><b>Marca del producto: </b></label>
                  <select name="drop_marca" id="drop_marca" class="form-control">
                                <%
                                    Marcas marcasM = new Marcas();
                                    HashMap<String,String> dropM = marcasM.drop_marca();
                                    for(String i: dropM.keySet()){
                                        out.println("<option value='" + i + "' >" + dropM.get(i) +"</option>");
                                    }
                                %>
                                </select>   
                  
                  <label><b>Fecha Ingreso:</b></label>
                  <input type="date" name="txt_fi" id="txt_fi" class="form-control" required>
                  <label><b>Precio costo:</b></label>
                  <input type="number" step="0.1" name="txt_precio_costo" id="txt_precio_costo" class="form-control" required>
                  <label><b>Precio venta:</b></label>
                  <input type="number" step="0.1" name="txt_precio_venta" id="txt_precio_venta" class="form-control" required>
                  <label><b>Precio Unitario:</b></label>
                  <input type="number" step="0.1" name="txt_precio_unitario" id="txt_precio_unitario" class="form-control" required>
                       </div>
                      <br>
                    <div class="modal-footer">
                    <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-dark btn-lg">Modificar</button>
                    <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-danger btn-lg" onclick="javascript:if(!confirm('¿Desea Eliminar?'))return false">Eliminar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
               <!-- fin de modificar-->
        
            <!-- Inicio de formulario: Ingresar nueva venta detalle -->
        
            <div class="modal fade" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="sr_compras_detalle" method="post" class="form-group" >
                        
                            <div class="modal-header">
                                <h4 class="modal-title text-info" ><b >Ingrese una nueva compra detalle</b></h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                    
                            <div class="modal-body"> 
                  <label><b>ID </b></label>
                  <input type="number" name="txt_id_cd" id="txt_id_cd" class="form-control" value="0" readonly>
                  <label><b>Compra </b></label>
                        <select name="drop_compra" id="drop_compra" class="form-control">
                        <%
                            Compras compras = new Compras();
                            HashMap<String,String> drop = compras.drop_compra();
                            for(String i: drop.keySet()){
                             out.println("<option value='" + i + "' >" + drop.get(i) +"</option>");
                            }
                              %>
                        </select>
                 <label><b>ID PRODUCTO</b></label>
                  <input type="number" name="txt_id_producto" id="txt_id_producto" class="form-control" value="0" readonly>
                 <label><b>Producto </b></label>
                  <select name="drop_psroducto" id="drop_producto" class="form-control">
                                <%
                                    Producto producto = new Producto();
                                    HashMap<String,String> dropN = producto.drop_producto();
                                    for(String i: dropN.keySet()){
                                        out.println("<option value='" + i + "' >" + dropN.get(i) +"</option>");
                                    }
                                %>
                                </select>   
                  <label><b>Precio Unitario:</b></label>
                  <input type="number" step="0.1" name="txt_precio_unitario" id="txt_precio_unitario" class="form-control" required>
                  <label><b>Cantidad:</b></label>
                  <input type="text" name="txt_cantidad" id="txt_cantidad" class="form-control" required>
                  <label><b>Existencia:</b></label>
                  <input type="number" name="txt_existencia" id="txt_existencia" class="form-control" required>
                  <label><b>Descripcion:</b></label>
                  <input type="text" name="txt_descripcion" id="txt_descripcion" class="form-control" required>
                  <label><b>Imagen: </b></label>
                  <input type="file" name="txt_imagen" id="txt_imagen" class="form-control">
                  <label><b>Marca del Producto: </b></label>
                  <select name="drop_marca" id="drop_marca" class="form-control">
                      <%
                       Marcas marcasm = new Marcas();
                       HashMap<String,String> dropm = marcasm.drop_marca();
                       for(String i: dropm.keySet()){
                       out.println("<option value='" + i + "' >" + dropm.get(i) +"</option>");
                            }
                       %>
                                </select>
                  <label><b>Fecha Ingreso:</b></label>
                  <input type="date" name="txt_fi" id="txt_fi" class="form-control" required>
                  <label><b>Precio costo:</b></label>
                  <input type="number" step="0.1" name="txt_precio_costo" id="txt_precio_costo" class="form-control" required>
                  <label><b>Precio venta:</b></label>
                  <input type="number" step="0.1" name="txt_precio_venta" id="txt_precio_venta" class="form-control" required>
                  <label><b>Precio Unitario:</b></label>
                  <input type="number" step="0.1" name="txt_precio_unitario" id="txt_precio_unitario" class="form-control" required>
                           </div>
                
                            <br>
                            <div class="modal-footer">
                              <button class="btn btn-info btn-block"  name="btn_agregar" id="btn_agregar" value="agregar"><b>Agregar</b></button>
                             </div>       
                           </form>  
                          </div>
                        </div>
                     </div>  
                    <!-- Fin de formulario: Ingresar nueva marca -->  
                         
         </div>
                                 <!-- Inicio tabla empleados -->        
            <table class="table table-hover " style="text-align: center; ">
                <thead class="thead-dark">
                    <tr>
                        <th>Id</th>
                        <th>compras</th>        
                        <th>id producto</th> 
                        <th>producto</th> 
                        <th>precio unitario</th> 
                        <th>cantidad</th> 
                        <th>Descripcion</th> 
                        <th>Marca</th> 
                        <th>Fecha Ingreso</th> 
                        <th>Precio costo</th> 
                        <th>precio Vents</th> 
                        
                    </tr>
                </thead>
                <tbody id="tbl_compra_detalle" class="table-bordered"> 
                    <% 
                        Compras_detalle cop = new Compras_detalle();
                        DefaultTableModel tabla = new DefaultTableModel();
                        tabla = cop.leer();
                        for (int t=0;t<tabla.getRowCount();t++){                          
                            out.println("<tr>");                                
                            out.println("<td>" + tabla.getValueAt(t,0) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,2) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,3) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,4) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,5) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,6) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,7) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,8) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,9) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,10) + "</td>");
                            out.println("<td>" + tabla.getValueAt(t,11) + "</td>");
                               
                            out.println("</tr>");
                        }
                    %>               
                </tbody>
            </table>
    
      
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>    
     
    </body>
</html>
