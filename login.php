<?php
session_start ();
include('includes/config.php');
$loginOK=false;
$login =($_POST['user']);
$password =($_POST['pwd']); 
 
if (empty($_POST['user']) || empty($_POST['pwd'])) { 
echo'Vous devez verifier le formulaire authentification...';
}else{
$query = "SELECT iduser,nomuser,prenom,login,password FROM utilisateur where login='$login' and password='$password'";
$results = mysqli_query($link, $query) or die ("echec de l'exécution de la requête<br>."  . mysql_error());
   if(mysqli_num_rows($results) > 0){
   $data = mysqli_fetch_object($results);
   $loginOK=true;
   }else{echo'Cet utilisateur est non reconu dans le systeme...';
   }
}
if($loginOK){
   $_SESSION['iduser']=$data->iduser;
   $_SESSION['nomuser']=$data->nomuser;
   $_SESSION['prenom']=$data->prenom;
   $_SESSION['login']=$data->login;
   $_SESSION['password']=$data->password;
   echo '<meta http-equiv="refresh" content="0;URL=acceuil.php">';
}
?>