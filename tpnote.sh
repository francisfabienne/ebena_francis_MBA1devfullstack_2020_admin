#!/bin/bash

echo "###################################  3   ###########################"


echo "saisir le nom de l'utilisateur"
read user
Auth=$(grep $user /etc/passwd)
if [ -z $Auth ]; then
    echo "l'utilisateur saisi n'existe pas sur le système"
else
    
    echo "L'utilisateur existe bel et bien"
fi



echo "##############     4    #######################"



echo 
echo

echo "saisir un nom de groupe et rassurez-vous qui'il existe"
read Nom
echo
ListGroupExistant=$(grep $Nom /etc/group | cut -d: -f1)
 if [ -z $ListGroupExistant ]; then
    echo "Le groupe saisie n'existe pas, veuillez réessayer !"
 else 
    echo " Ce nom de groupe existe"   
 fi   



 echo "##############     5     #######################"


function createUser {   

echo "Faite votre choix:"
echo "1)  CREER-UTILISATEUR"
echo "2)  SUPPRIMER-UTILISATEUR"

case $reponse in
    1)
        echo "saisir le nom de l'utilisateur"
            read Newuser
            #on verifie si leL'utilisateur saisie existe
            Auth=$(grep $Newuser /etc/passwd)
            if [ -z $Auth ]; then
                #s'il n'existe pas, on le crée
                sudo adduser $Newuser
            elif
               echo "l'utilisateur existe déjà dans le system"
            else
               echo "mauvaise entrée"    
            fi 
        ;;
    2)

         echo "saisir le nom de l'utilisateur"
            read Newuser
            #on verifie si L'utilisateur saisie existe
            Auth=$(grep $Newuser /etc/passwd)
            if [ -z $Auth ]; then
                #si le nom saisie n'existe pas, on affiche le message
                echo "L'utilisateur saisie n'existe pas"
            else
                #s'il existe alors, on le supprime
                sudo deluser $Newuser 
            fi   
        ;;
esac

}

createUser


echo "###########################   6    ###############################"

function createGroupe {   
case $reponse in
    1)
        echo "saisir le nom de l'utilisateur"
            read Newgroupe
            #on verifie si leL'utilisateur saisie existe
            gpeExistant=$(grep $Newgroupe /etc/group | cut -d: -f1)
            if [ -z $gpeExistant ]; then
                #s'il n'existe pas, on le crée
                sudo adduser $Newgroupe
            elif
               echo "l'utilisateur existe déjà dans le system"
            else
               echo "mauvaise entrée"    
            fi 
        ;;
    2)

         echo "saisir le nom de l'utilisateur"
            read Newuser
            #on verifie si L'utilisateur saisie existe
            gpeExistant=$(grep $Newgroupe /etc/group | cut -d: -f1)
            if [ -z $gpeExistant ]; then
                #si le nom saisie n'existe pas, on affiche le message
                echo "L'utilisateur saisie n'existe pas"
            else
                #s'il existe alors, on le supprime
                sudo deluser $Newgroupe 
            fi   
        ;;
esac

}

createGroupe
   
echo "###########################    7     ##################################"


function createFile {   
case $reponse in
    1)
        echo "saisir le nom de l'utilisateur"
            read Newfile
            #on verifie si leL'utilisateur saisie existe
            fileExistant=$(grep $Newfile /home/francisfabienne ls)
            if [ -z $fileExistant ]; then
                #s'il n'existe pas, on le crée
                touch $Newfile
            elif
               echo "l'utilisateur existe déjà dans le system"
            else
               echo "mauvaise entrée"    
            fi 
        ;;
    2)

         echo "saisir le nom de l'utilisateur"
            read Newfile
            #on verifie si L'utilisateur saisie existe
            fileExistant=$(grep $Newfile /etc/group | cut -d: -f1)
            if [ -z $fileExistant ]; then
                #si le nom saisie n'existe pas, on affiche le message
                echo "L'utilisateur saisie n'existe pas"
            else
                #s'il existe alors, on le supprime
                rm -R $Newfile 
            fi   
        ;;
esac

}

createFile