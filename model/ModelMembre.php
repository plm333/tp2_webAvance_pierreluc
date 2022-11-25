<?php

class ModelMembre extends Crud {

    public $nom;
    public $prenom;
    public $adresse;
    public $code_postal;
    public $telephone;
    public $courriel;
    public $num_livre_loue;
    public $type_membre;
    public $id;

    protected $table = 'membre';
    protected $primaryKey = 'id';
    
    protected $fillable = ['id', 'nom', 'prenom', 'adresse', 'code_postal', 'telephone','courriel', 'num_livre_loue','type_membre'];

}

?>