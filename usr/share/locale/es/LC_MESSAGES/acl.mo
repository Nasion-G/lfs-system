��    2      �  C   <      H     I     ]     q     �     �  )   �  )   �       �   $  7  �  B   (  l  k  �   �  '   ]	  '   �	     �	  $   �	     �	  &   
  2   .
  3   a
  /   �
  /   �
  =   �
     3  %   N  2   t     �  $   �  &   �  +     '   7  ,   _  &   �  '   �  *   �  +        2     I     a     s     �     �  &   �     �     �     �          0  M  K     �     �     �  "   �      �  (     (   6     _  �   }  _  T  O   �  �    �   �  7   "  :   Z  "   �  )   �     �  4   �  0   0  ?   a  B   �  @   �  S   %     y  +   �  8   �     �  +     1   A  7   s  6   �  ?   �  4   "  8   W  -   �  2   �  )   �          7     K  !   g  "   �  ,   �     �     �     �                       '      $      /            +   1      *   0                  -           )         	                        %       2         .   &   (            
                                 "                  !                ,       #    	%s -B pathname...
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
 %s %s -- get file access control lists
 %s %s -- set file access control lists
 %s: %s in line %d of file %s
 %s: %s in line %d of standard input
 %s: %s: %s in line %d
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
 preserving permissions for %s setting permissions for %s Project-Id-Version: acl-2.2.43.1
Report-Msgid-Bugs-To: acl-devel@nongnu.org
PO-Revision-Date: 2007-03-16 23:25+0100
Last-Translator: Antonio Trueba <atrueba@users.sourceforge.net>
Language-Team: Spanish
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-Language: Spanish
 	%s -B ruta...
 	%s -D ruta...
 	%s -R ruta...
 	%s -b nombre de ruta ACL DACL...
 	%s -d nombre de ruta de ACL...
 	%s -l ruta...	[no compatible con IRIX]
 	%s -r ruta...	[no compatible con IRIX]
 	%s nombre de ruta de ACL...
       --set=acl        establecer ACL(s) de archivo(s), reemplazando el actual
      --set-file=arch  leer entradas ACL a establecer desde "arch"
      --mask           recalcular la máscara de permisos efectivos
   -R, --recursive         recorrer subdirectorios recursivamente
  -L, --logical           recorrido lógico, siguiendo enlaces simbólicos
  -P, --physical          recorrido físico, sin seguir enlaces simbólicos
      --restore=file      restaurar ACLs (inverso de `getfacl -R')
      --test              modo de prueba (los ACLs no se modifican)
   -d, --default           mostrar la lista de control de acceso predeterminada
   -m, --modify=acl         modificar ACL actual(es) de archivo(s)
  -M, --modify-file=arch   leer entradas ACL desde "arch"
  -x, --remove=acl         eliminar entradas desde ACL(s) de archivo(s)
  -X, --remove-file=arch   leer entradas de ACL a borrar desde "arch"
  -b, --remove-all         eliminar todas las entradas ACL extendidas
  -k, --remove-default     eliminar el ACL predeterminado
   -n, --no-mask           no recalcular la máscara de derechos efectivos
  -d, --default           las operaciones afectal al ACL predeterminado
 %s %s -- obtener listas de control de acceso a archivo
 %s %s -- establecer listas de control de acceso a archivo
 %s: %s en línea %d de archivo %s
 %s: %s en línea %d de entrada estándar
 %s: %s: %s en línea %d
 %s: %s: No se pudo cambiar el propietario/grupo: %s
 %s: %s: ACL incorrecto `%s': %s en posición %d
 %s: %s: ACL predeterminado incorrecto `%s': %s en posición %d
 %s: %s: No se encontró nombre de archivo en línea %d, abortando
 %s: %s: Sólo los directorios pueden tener ACLs predeterminados
 %s: No se encontró nombre de archivo en línea %d de entrada estándar, abortando
 %s: Opción -%c incompleta
 %s: Opción -%c: %s cerca del carácter %d
 %s: Eliminando '/' inicial en nombres de ruta absolutos
 %s: Entrada estándar: %s
 %s: ACL de acceso '%s': %s en posición %d
 %s: no se pudo obtener ACL de acceso en '%s': %s
 %s: no se pudo obtener texto ACL de acceso en '%s': %s
 %s: no se pudo obtener ACL predeterminado en '%s': %s
 %s: no se pudo obtener texto de ACL predeterminado en '%s': %s
 %s: no se pudo establecer ACL de acceso en "%s": %s
 %s: no se pudo establecer ACL predeterminado a "%s": %s
 %s: error borrando ACL de acceso en "%s": %s
 %s: error borrando ACL predeterminado en "%s": %s
 %s: falló la asignación de memoria: %s
 %s: falló la apertura: %s
 Entradas duplicadas Tipo de posición inválido Falta una posición o es errónea Múltiples entradas del mismo tipo Escriba `%s --help' para más información.
 Uso:
 Uso: %s %s
 Uso: %s [-%s] archivo ...
 manteniendo permisos a %s estableciendo permisos a %s 