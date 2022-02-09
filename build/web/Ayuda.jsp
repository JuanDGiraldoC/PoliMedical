<%-- 
    Document   : index
    Author     : Esteban Aricapa y Wilber Hinestroza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>

    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="bootstrap" viewBox="0 0 118 94">
        <title>Bootstrap</title>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
    </symbol>
    <symbol id="facebook" viewBox="0 0 16 16">
        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
    </symbol>
    <symbol id="instagram" viewBox="0 0 16 16">
        <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
    </symbol>
    <symbol id="twitter" viewBox="0 0 16 16">
        <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
    </symbol>
    </svg>

    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="assets/js/collapse.js"></script>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PoliMedical</title>
    </head>
    <body>

        <div>
            <div style="text-align: center">
                <img src="Logo.png" width="205" height="78" alt="alt"/>
            </div>
            <ul class="nav nav-tabs justify-content-center">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="InicioAdmin.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="Recordatorios.jsp">Recordatorios</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Bitacora</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="AñadirBitacora.jsp">Crear</a></li>
                        <li><a class="dropdown-item" href="MuestraBitacora">Ver</a></li>
                        <li><a class="dropdown-item" href="EditarBitacora.jsp">Editar</a></li>
                        <li><a class="dropdown-item" href="EliminarBitacora.jsp">Eliminar</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="Enlistar">Documentos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="InfUsuario">Ayuda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.jsp">Salir</a>
                </li>
            </ul>
        </div>



        <br>
        <%-- <%@ page import="controller.ModificarLibro" %> --%>
        <form method="post" style="text-align: center">
            <div style="text-align: center">
                <h1> ¿Necesitas Ayuda? </h1>
                <div class="container">
                    <p>Puedes desplegar cada una de las opciones que tenemos para ti. Encontrarás información relevante
                        desde contactos de emergencia nacionales hasta información sobre cada sección de la aplicación.
                        Incluyendo tu propia información.<br>
                    </p>
                    <h2 style="text-align: center"></h2>
                </div> 
            </div>          
        </form>

        <%@ page import="Service.Usuarios" %>
        <%
            Usuarios producto = (Usuarios) request.getAttribute("Libros");
        %>


        <div class="container">
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingZero">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseZero" aria-expanded="false" aria-controls="collapseZero">
                            <h5>Información del Usuario</h5>
                        </button>
                    </h2>
                    <div id="collapseZero" class="accordion-collapse collapse" aria-labelledby="headingZero" data-bs-parent="#accordionExample">
                        <br><br>
                        <table cellspacing="3" cellpadding="3" border="1" style="margin: 0 auto">
                            <tr>
                                <td align="right"> Nombre: </td>
                                <td> <%= producto.getNombre()%>  </td>
                            </tr>
                            <tr>
                                <td align="right"> Correo: </td>
                                <td> <%= producto.getGmail()%> </td>
                            </tr>
                            <tr>
                                <td align="right"> EPS: </td>
                                <td> <%= producto.getEps()%> </td>
                            </tr>
                            <tr>
                                <td align="right"> Cedula: </td>
                                <td> <%= producto.getCedula()%> </td>
                            </tr>

                        </table>
                        <br><br>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <h5>Directorio Médico de Emergencia</h5>
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <strong>Números de emergencia básicos de entidades competentes.</strong> <br><br>
                            - Linea de emergencias   : 123, Es la línea única de emergencias Nacional, que permite que en 
                            un sólo número los colombianos puedan acceder a todos los servicios de emergencia y seguridad que ofrece el Estado.<br>
                            - Bomberos               : 119 <br>
                            - Cruz Roja              : 132 <br>
                            - Servicio de ambulancias: 125 <br>                       
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <h5>Servicio de Ayuda</h5>
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <strong>Funcionalidades del Sistema</strong><br> 
                            En cada pestaña encontraras información útil de las funcionalidades principales del sistema como lo
                            son bitácora, recordatorios y la carga de documentos.
                            <br>
                            ¿Qué puedes encontrar en...? Te ayudamos:
                            <br><br>
                            <div class="accordion accordion-flush" id="accordionFlushExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                            <h6>Bitácora</h6>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <div class="row row-cols-1 row-cols-md-3 g-4">
                                                <div class="col">
                                                    <div class="card h-100"><br>
                                                        <img src="crear.png" class="card-img-top" alt="...">
                                                        <div class="card-body">
                                                            <h5 class="card-title">Crear</h5>
                                                            <p class="card-text">En esta sección podrás ir documentando, día a día si así lo deseas, toda la información
                                                                sobre el estado de salud. Así llevaras un reporte de cada síntoma, cada anomalía, cada novedad que se pueda
                                                                presentar durante el día. Cada nota, se irá guardando y automaticamente se documentará la fecha de ingreso
                                                                para que puedas tener todos tus reportes en orden.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="card h-100">
                                                        <img src="lista1.png" class="card-img-top" alt="...">
                                                        <br><br>
                                                        <div class="card-body">
                                                            <h5 class="card-title">Visualizar</h5>
                                                            <p class="card-text">En esta sección, podrás tener el listado por orden cronológico de tus reportes de 
                                                                bitácora creados, así tendrás en una sola vista cada una de tus novedades.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="card h-100">
                                                        <img src="modi.png" class="card-img-top" alt="...">
                                                        <div class="card-body">
                                                            <h5 class="card-title">Modificar</h5>
                                                            <p class="card-text">En esta sección, cómo su nombre bien lo indica, tendrás la oportunidad de modificar
                                                                tu reporte de bitácora si así lo deseas, en caso de haber encontrado algún error o que te fató
                                                                documentar algo, tendrás la oportunidad de hacerlo bien.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="card h-100">
                                                        <img src="elim.png" class="card-img-top" alt="...">
                                                        <div class="card-body">
                                                            <h5 class="card-title">Eliminar</h5>
                                                            <p class="card-text">En está sección, podrás eliminar permanentemente algún reporte de bitácora
                                                                que ya no consideres oportuno, o caso tal si ya es demasiado antiguo cómo para tenerlo almacenado.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                            <h6>Recordatorios</h6>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <div class="row row-cols-1 row-cols-md-2 g-4">
                                                <div class="col">
                                                    <div class="card">
                                                        <img src="calen.png" class="card-img-top" alt="...">
                                                        <div class="card-body">
                                                            <h5 class="card-title">Calendario</h5>
                                                            <p class="card-text">En esta sección podrás encontrar un calendario en el cuál podrás registrar todas
                                                                aquellas cosas que consideres que necesitas recordar, cómo fechas de exámenes, eventos importantes, citas
                                                                medicas, alertas de medicamentos. Todo lo que necesites.
                                                                Sólo debes de darle al botón + En la parte inferior del calendario y únicamente necesitarás de tu cuenta de Google
                                                                personal. Una vez dentro añades el Calendario de Polimedical y estarás listo para registrar todo lo que desees. 
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="card">
                                                        <img src="gooca.png" class="card-img-top" alt="...">
                                                        <div class="card-body">
                                                            <h5 class="card-title">Importante</h5>
                                                            <p class="card-text">Al momento de estar creando un recordatorio nuevo, asegurate de tener marcado el calendario
                                                                PoliMedical, para poder visualizar todos tus eventos en tu Bitácora Médica.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>  
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                            <h6>Documentos</h6>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">

                                        </div><div class="card text-center" class="card mb-3" >
                                            <img src="subir.png" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title">Cargar Archivos</h5>
                                                <p class="card-text">En esta sección podrás cargar y guardar todos tus archivos médicos más importantes en cualquier formato.
                                                    Tendrás todo el papeleo almacenado en un mismo sitio para tener un mejor manejo de tus archivos físicos.
                                                </p>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            <h5>Reportar un Problema</h5>
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <strong>¿En que podemos ayudarte?</strong>
                            Puedes ponerte en contacto con el equipo de PoliMedical através de nuetras redes sociales, o contactarnos 
                            directamente a través de nuestras lineas de atención telefónica o de correo electrónico. Nuestro equipo 
                            te responderá lo más pronto posible para brindarte toda nuestra atención.<br>
                            
                            <br>
                            <p style="color: blue"><u>polimedical@gmail.com</u></p>
                            
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingFour">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                            <h5>Editar Información del Usuario</h5>
                        </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <strong>Cuidado.</strong> Escriba la información solicitada de manera actualizada y correcta.<br><br>
                            <%@ page import="controller.ModificarUsuario" %>
                            <form action="ModificarUsuario" method="post" style="text-align: center">
                                <div style="text-align: center">

                                    <table cellspacing="3" cellpadding="3" border="1" style="margin: 0 auto">
                                        <tr>
                                            <td align="right"> Nombre: </td>
                                            <td> <textarea type="text" name="nombre" class="form-control" aria-label="" id="validationDefaultUsername"><%= producto.getNombre()%></textarea> </td>
                                        </tr>
                                        <tr>
                                            <td align="right"> EPS: </td>
                                            <td> <textarea type="text" name="eps" class="form-control" aria-label="" id="validationDefaultUsername"><%= producto.getEps()%></textarea> </td>
                                        </tr>
                                        <tr>
                                            <td align="right"> Correo: </td>
                                            <td> <textarea type="text" name="correo" class="form-control" aria-label="" id="validationDefaultUsername"><%= producto.getGmail()%></textarea> </td>
                                        </tr>
                                        <tr>
                                            <td align="right"> Cedula: </td>
                                            <td> <textarea type="text" name="cedula" class="form-control" aria-label="" id="validationDefaultUsername"><%= producto.getCedula()%></textarea> </td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td align="right"> Usuario: </td>
                                            <td> <textarea type="text" name="usu" class="form-control" aria-label="" id="validationDefaultUsername"><%= producto.getUsu()%></textarea> </td>
                                        </tr>
                                        <tr>
                                            <td align="right"> Contraseña Anterior: </td>
                                            <td><input type="password" name="contraA" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required></td>
                                        </tr>
                                        <tr>
                                            <td align="right"> Nueva Contraseña: </td>
                                            <td><input type="password" name="contraB" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required></td>
                                        </tr>
                                    </table>
                                    <br>
                                    <input class="btn btn-primary" type="submit" value="Actualizar Usuario">
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="container">
            <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
                <div class="col-md-4 d-flex align-items-center">
                    <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
                        <img src="favicon.png" width="width" height="height" alt="alt" xlink:href="#PoliMedical"/>
                    </a>
                    <span class="text-muted">&copy; 2022 Company, Inc</span>
                </div>

                <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                    <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
                    <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
                    <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
                </ul>
            </footer>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>

