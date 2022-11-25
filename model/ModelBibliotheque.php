<?php

class ModelBibliotheque extends Crud {

    public $nom;
    public $id;

    protected $table = 'bibliotheque';
    protected $primaryKey = 'id';
    
    protected $fillable = ['id', 'nom'];

}

?>