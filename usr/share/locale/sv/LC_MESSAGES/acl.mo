��    2      �  C   <      H     I     ]     q     �     �  )   �  )   �       �   $  7  �  B   (  l  k  �   �  '   ]	  '   �	     �	  $   �	     �	  &   
  2   .
  3   a
  /   �
  /   �
  =   �
     3  %   N  2   t     �  $   �  &   �  +     '   7  ,   _  &   �  '   �  *   �  +        2     I     a     s     �     �  &   �     �     �     �          0  @  K     �     �     �     �     �  *   �  *   )     T  �   i  B  A  =   �  u  �  �   8  )   �  ,   �           <     ]  )   t  A   �  A   �  4   "  0   W  >   �     �  %   �  5        B  (   W  +   �  0   �  +   �  0   	  2   :  2   m  ,   �  ,   �     �          5     C     S     n  (   �     �     �     �     �                  '      $      /            +   1      *   0                  -           )         	                        %       2         .   &   (            
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
 preserving permissions for %s setting permissions for %s Project-Id-Version: acl 2.2.37
Report-Msgid-Bugs-To: acl-devel@nongnu.org
PO-Revision-Date: 2006-05-23 22:45+0100
Last-Translator: Daniel Nylander <po@danielnylander.se>
Language-Team: Swedish <tp-sv@listor.tp-sv.se>
Language: sv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 	%s -B sökväg...
 	%s -D sökväg...
 	%s -R sökväg...
 	%s -b acl dacl sökväg...
 	%s -d dacl sökväg...
 	%s -l sökväg...	[inte IRIX-kompatibel]
 	%s -r sökväg...	[inte IRIX-kompatibel]
 	%s acl sökväg...
       --set=acl           ställ in ACL:en för fil(erna), ersätt aktuell ACL
      --set-file=fil      läs ACL-poster att ställa in från fil
      --mask              räkna om mask för effektiva rättigheter
   -R, --recursive         gå rekursivt ner i underkataloger
  -L, --logical           logisk väg, följ symboliska länkar
  -P, --physical          fysisk väg, följ inte symboliska länkar
      --restore=fil       återställ ACL:er (invers av "getfacl -R")
      --test              testläge (ACL:er ändras inte)
   -d, --default           visa standardåtkomstkontrollistan
   -m, --modify=acl        ändra aktuell(a) ACL(:er) på fil(erna)
  -M, --modify-file=fil   läs ACL-poster att ändra från fil
  -x, --remove=acl        ta bort poster från ACL(:er) på fil(erna)
  -X, --remove-file=fil   läs ACL-poster att ta bort från fil
  -b, --remove-all        ta bort alla utökade ACL-poster
  -k, --remove-default    ta bort standard-ACL:en
   -n, --no-mask           räkna inte om mask för effektiva rättigheter
  -d, --default           åtgärder gällande för standard-ACL:en
 %s %s -- hämta filåtkomstkontrollistor
 %s %s -- ställ in filåtkomstkontrollistor
 %s: %s på rad %d i filen %s
 %s: %s på rad %d i standard in
 %s: %s: %s på rad %d
 %s: %s: Kan inte ändra ägare/grupp: %s
 %s: %s: Felaktigt formulerad åtkomst-ACL "%s": %s vid posten %d
 %s: %s: Felaktigt formulerad standard-ACL "%s": %s vid posten %d
 %s: %s: Inget filnamn hittades på rad %d, avbryter
 %s: %s: Endast kataloger kan ha standard-ACL:er
 %s: Inget filnamn hittades på rad %d i standard in, avbryter
 %s: Flaggan -%c inte komplett
 %s: Flaggan -%c: %s nära tecknet %d
 %s: Tar bort inledande "/" från absoluta sökvägar
 %s: Standard in: %s
 %s: åtkomst-ACL "%s": %s vid posten %d
 %s: kan inte få åtkomst-ACL på "%s": %s
 %s: kan inte få åtkomst-ACL-text på "%s": %s
 %s: kan inte få standard-ACL på "%s": %s
 %s: kan inte få standard-ACL-text på "%s": %s
 %s: kan inte ställa in åtkomst-acl på "%s": %s
 %s: kan inte ställa in standard-acl på "%s": %s
 %s: fel vid borttagning av acl på "%s": %s
 %s: fel vid borttagning av acl på "%s": %s
 %s: malloc misslyckades: %s
 %s: opendir misslyckades: %s
 Dubbla poster Ogiltig posttyp Saknad eller felaktig post Flera poster av samma typ Prova "%s --help" för mer information.
 Användning:
 Användning: %s %s
 Användning: %s [-%s] fil ...
 bevarar rättigheter för %s ställer in rättigheter för %s 