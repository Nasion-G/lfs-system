��    4      �  G   \      x     y     �     �     �     �  )   �  )        ?  �   T  7     B   X  l  �  �   	  Z   �	  '   �	  '   
     8
  $   V
     {
     �
  &   �
  2   �
  3     /   @  /   p  =   �     �  %   �  2        R  $   j  &   �  +   �  '   �  ,   
  &   7  '   ^  *   �  +   �     �     �               1     H  &   f     �     �     �     �     �  {  �     r     �     �     �     �  ,   �  ,         M    e  O  h  L   �  �    �   �  n   y  =   �  @   &  &   g  0   �      �  4   �  @     ?   V  K   �  ?   �  E   "  O   h     �  .   �  C        I  +   g  6   �  A   �  B     M   O  6   �  D   �  <     F   V     �     �     �     �     	      '  4   H     }     �  $   �  !   �      �                 	              
   4                                  ,                     0      %             )      2   *      #                    (       !              $   "         +                         &   .   -         3          /   1   '    	%s -B pathname...
 	%s -D pathname...
 	%s -R pathname...
 	%s -b acl dacl pathname...
 	%s -d dacl pathname...
 	%s -l pathname...	[not IRIX compatible]
 	%s -r pathname...	[not IRIX compatible]
 	%s acl pathname...
       --set=acl           set the ACL of file(s), replacing the current ACL
      --set-file=file     read ACL entries to set from file
      --mask              do recalculate the effective rights mask
   -R, --recursive         recurse into subdirectories
  -L, --logical           logical walk, follow symbolic links
  -P, --physical          physical walk, do not follow symbolic links
      --restore=file      restore ACLs (inverse of `getfacl -R')
      --test              test mode (ACLs are not modified)
   -d, --default           display the default access control list
   -m, --modify=acl        modify the current ACL(s) of file(s)
  -M, --modify-file=file  read ACL entries to modify from file
  -x, --remove=acl        remove entries from the ACL(s) of file(s)
  -X, --remove-file=file  read ACL entries to remove from file
  -b, --remove-all        remove all extended ACL entries
  -k, --remove-default    remove the default ACL
   -n, --no-mask           don't recalculate the effective rights mask
  -d, --default           operations apply to the default ACL
   -v, --version           print version and exit
  -h, --help              this help text
 %s %s -- get file access control lists
 %s %s -- set file access control lists
 %s: %s in line %d of file %s
 %s: %s in line %d of standard input
 %s: %s: %s in line %d
 %s: %s: Cannot change mode: %s
 %s: %s: Cannot change owner/group: %s
 %s: %s: Malformed access ACL `%s': %s at entry %d
 %s: %s: Malformed default ACL `%s': %s at entry %d
 %s: %s: No filename found in line %d, aborting
 %s: %s: Only directories can have default ACLs
 %s: No filename found in line %d of standard input, aborting
 %s: Option -%c incomplete
 %s: Option -%c: %s near character %d
 %s: Removing leading '/' from absolute path names
 %s: Standard input: %s
 %s: access ACL '%s': %s at entry %d
 %s: cannot get access ACL on '%s': %s
 %s: cannot get access ACL text on '%s': %s
 %s: cannot get default ACL on '%s': %s
 %s: cannot get default ACL text on '%s': %s
 %s: cannot set access acl on "%s": %s
 %s: cannot set default acl on "%s": %s
 %s: error removing access acl on "%s": %s
 %s: error removing default acl on "%s": %s
 %s: malloc failed: %s
 %s: opendir failed: %s
 Duplicate entries Invalid entry type Missing or wrong entry Multiple entries of same type Try `%s --help' for more information.
 Usage:
 Usage: %s %s
 Usage: %s [-%s] file ...
 preserving permissions for %s setting permissions for %s Project-Id-Version: acl 2.2.53
Report-Msgid-Bugs-To: acl-devel@nongnu.org
PO-Revision-Date: 2022-11-16 17:08+0100
Last-Translator: Jean-Philippe MENGUAL <jpmengual@debian.org>
Language-Team: French <debian-l10n-french@lists.debian.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n > 1;
 	%s -B répertoire...
 	%s -D répertoire...
 	%s -R répertoire...
 	%s -b acl dacl répertoire...
 	%s -d dacl répertoire...
 	%s -l répertoire...	[pas compatible IRIX]
 	%s -r répertoire...	[pas compatible IRIX]
 	%s acl répertoire...
       --set=acl           définir l'ACL de(s) fichier(s) en remplaçant l'ACL
                          actuel
      --set-file=fichier  lire les entrées d’ACL à modifier du fichier
      --mask              recalculer les masques des droits en vigueur
   -R, --recursive         parcourir récursivement les sous-répertoires
  -L, --logical           suivre les liens symboliques
  -P, --physical          ne pas suivre les liens symboliques
      --restore=fichier   restaurer les ACL (inverse de « getfacl -R »)
      --test              mode test (les ACL ne sont pas modifiées)
 -d, --default           afficher la liste de contrôle d'accès par défaut
   -m, --modify=acl           modifier le(s) ACL(s) actuel(s) de fichier(s)
  -M, --modify-file=fichier  lire les entrées d’ACL à modifier du fichier
  -x, --remove=acl           supprimer les entrées d’ACL(s) de(s)s fichier(s)
  -X, --remove-file=fichier  lire les entrées d’ACL à supprimer du fichier
  -b, --remove-all           supprimer toutes les entrées d’ACL étendues
  -k, --remove-default       supprimer l'ACL par défaut
   -n, --no-mask           ne pas recalculer les masques de droits en                           vigueur
  -d, --default           les opérations s'appliquent à l'ACL par défaut
   -v, --version           afficher la version et quitter
  -h, --help              afficher ce message d'aide
 %s %s -- obtenir les listes de contrôle d'accès du fichier
 %s %s -- définir les listes de contrôle d'accès des fichiers
 %s : %s à la ligne %d du fichier %s
 %s : %s à la ligne %d de l’entrée standard
 %s : %s : %s dans la ligne %d
 %s : %s : impossible de changer d'attributs : %s
 %s : %s : impossible de changer de propriétaire/groupe : %s
 %s : %s : ACL mal formulée « %s » : %s à l'entrée %d
 %s : %s : ACL par défaut mal formulée « %s » : %s à l'entrée %d
 %s : %s : nom de fichier manquant à la ligne %d, annulation
 %s : %s : seuls les répertoires peuvent avoir des ACL par défaut
 %s : nom de fichier manquant à la ligne %d de l'entrée standard, annulation
 %s : Option -%c incomplète
 %s : Option -%c : %s près du caractère %d
 %s : suppression du premier « / » des noms de chemins absolus
 %s : entrée standard : %s
 %s : ACL « %s » : %s à l'entrée %d
 %s : impossible d'obtenir l'ACL sur « %s » : %s
 %s : impossible d'obtenir le texte d’ACL sur « %s » : %s
 %s : impossible d'obtenir l'ACL par défaut sur « %s » : %s
 %s : impossible d'obtenir le texte d’ACL par défaut sur « %s » : %s
 %s : impossible de modifier l'ACL sur « %s »: %s
 %s : impossible de définir l'ACL par défaut sur « %s » : %s
 %s : erreur de suppression de l’ACL sur « %s » : %s
 %s : erreur de suppression de l'ACL par défaut sur « %s » : %s
 %s : échec de malloc : %s
 %s : échec d'opendir : %s
 Entrées dupliquées Type d'entrée non valable Entrée erronée ou manquante Plusieurs entrées de même type Essayer « %s --help » pour plus d'informations.
 Utilisation :
 Utilisation : %s %s
 Utilisation : %s [-%s] fichier ...
 conserver les permissions pour %s modifier les permissions pour %s 