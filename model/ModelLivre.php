<?php

class ModelLivre extends Crud {
    public $titre;
    public $auteur;
    public $maison_edition;
    public $prix;
    public $id;

    protected $table = 'livre';
    protected $primaryKey = 'id';
    protected $fillable = ['id', 'titre', 'auteur', 'maison_edition', 'prix'];

}

?>