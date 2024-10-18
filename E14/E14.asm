; Premier programme en assembleur

SECTION .data ; Section des donnees.
debut :
    db "Le deuxième TP ", 0 
fin :
    db "est presque terminé !", 10, 0 

SECTION .text            ; Section du code.
global main              ; Rend l'etiquette visible de l'exterieur.
main :                   ; Etiquette pointant au debut du programme.
    mov edx, 16          ; arg3, nombre de caracteres a afficher
                         ; (equivalent a mov edx, 12).
    mov ecx, debut         ; arg2, adresse du premier caractere
                         ; a afficher.
    mov ebx, 1           ; arg1, numero de la sortie pour l'affichage,
                         ; 1 est la sortie standard.
    mov eax, 4           ; Numero de la commande write pour
                         ; l'interruption 0x80.
    int 0x80             ; Interruption 0x80, appel au noyau.

    mov edx, 23
    mov ecx, fin
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ebx, 0           ; Code de sortie, 0 est la sortie normale.
    mov eax, 1           ; Numero de la commande exit.
    int 0x80             ; Interruption 0x80, appel au noyau.
