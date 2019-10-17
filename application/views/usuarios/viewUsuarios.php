
 <table>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Telefono</th>
                <th>Genero</th>
                <th>Estado</th>
                <th>Archivo</th>
            </tr>
        </thead>
        <tbody>
            <?php
            	foreach ($usuarios->result() as $user){
                	echo "<tr><td><a href='/codeigniter/index.php/usuariosController/index/".$user->idUsuarios."'>".$user->NickName."</a></td><td>".$user->Telefono."</td><td>".$user->Genero."</td><td>".$user->Estado."</td><td><a target='_blank' href='/codeigniter/public/img/".$user->Archivo."'>".$user->Archivo."</a></td></tr>";
            	}
            ?>
        </tbody>
    </table>
    <br><br><br><br>
    <a href="/codeigniter/index.php/usuariosController/newusuario/">Volver</a>
</body>
</html>
