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



            #calendario {
                position: relative;
                width:400px;
                height:400px;
                margin:100px;
                border:1px solid black;
                font-size:24px;
            }
            th, td{
                text-align:center;
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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
                    <a class="nav-link active" aria-current="page" href="Recordatorios.jsp">Recordatorios</a>
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
                    <a class="nav-link" aria-current="page" href="InfUsuario">Ayuda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.jsp">Salir</a>
                </li>
            </ul>
        </div>
        <br>
        <div style="text-align: center">
<iframe src="https://calendar.google.com/calendar/embed?height=600&wkst=1&bgcolor=%23ffffff&ctz=America%2FBogota&src=cDA0bWltaHJyczNpaHViNXBkcnRyZWYwaDRAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=ZXMuY28jaG9saWRheUBncm91cC52LmNhbGVuZGFyLmdvb2dsZS5jb20&color=%237CB342&color=%237986CB" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>        <!-- <script type="text/javascript">
            window.onload = function () {

                var dias = ['Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa', 'Do']
                var mes = ['ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE']

                //creamos objeto fecha y calculamos los días que tiene el mes, al usar miFecha.getFullYear() ya tendremos correcto el año bisiesto
                var miFecha = new Date();
                var diasDelMes = (Date.UTC(miFecha.getFullYear(), miFecha.getMonth() + 1, 1) - Date.UTC(miFecha.getFullYear(), miFecha.getMonth(), 1)) / 1000 / 60 / 60 / 24;

                //centramos div
                document.getElementById("calendario").style.left = (document.body.clientWidth - 600) / 2 + "px";

                //creamos variables para usarlas como nodos y redimensionamos la tabla
                var th, tr, td, text;
                var table = document.getElementsByTagName("table")[0];
                table.style.width = "300px";
                table.style.height = "300px";
                table.style.margin = "0 auto";

                //CAPTION como cabecera de la tabla, donde irá "MES de AÑO"
                var caption = document.createElement("caption");
                var captionText = document.createTextNode(mes[miFecha.getMonth()] + " DE " + miFecha.getFullYear());
                caption.appendChild(captionText);
                table.appendChild(caption);

                //creamos los días de la tabla
                tr = document.createElement("tr");
                for (var i = 0; i < 7; i++) {
                    th = document.createElement("th");
                    text = document.createTextNode(dias[i]);
                    th.appendChild(text);
                    tr.appendChild(th);
                }
                table.appendChild(tr);

                //Creamos calendario, num serán los días y dateTemp una fecha temporal para saber por cual día empieza el mes miFecha.getMonth() del año miFecha.getFullYear() (para saber bisiestos)
                var num = 1;
                var dateTemp = new Date(miFecha.getFullYear() + '-' + (miFecha.getMonth() + 1) + '-1');

                for (var i = 0; i < 6; i++) {
                    tr = document.createElement("tr");
                    for (var j = 1; j < 8; j++) {

                        td = document.createElement("td");
                        if ((((j < dateTemp.getDay()) || (dateTemp.getDay() == 0 && j != 7)) && i == 0) || (num > diasDelMes)) {

                            text = document.createTextNode("");
                            td.appendChild(text);

                        } else {
                            text = document.createTextNode(num++);
                            td.appendChild(text);
                        }

                        tr.appendChild(td);

                    }
                    table.appendChild(tr);
                }

            }
        </script>
    </head>
    <body style="background-color: #02220;">
    <h1 style="text-align:center;">CALENDARIO</h1>
    <div id="calendario">
        <table>

        </table>
    </div>
        -->

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

    </body>
</html>
