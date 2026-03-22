<?php
class Singleton {
    private static $cnx = null;

    private function __construct() {}

    public static function getCnx() {
        if (self::$cnx === null) {
            try {
                self::$cnx = new PDO(
                    "mysql:host=localhost;dbname=magasin",
                    "root",
                    "",
                    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
                );
            } catch (PDOException $e) {
                die("Erreur de connexion : " . $e->getMessage());
            }
        }
        return self::$cnx;
    }
}
?>