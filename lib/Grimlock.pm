package Grimlock;
{
  $Grimlock::VERSION = '0.05';
}

=head1 NAME

Grimlock - KING OF CMS

=head1 SYNOPSIS

ME GRIMLOCK SAY YOU MUST MAKE DATABASE

  dbicadmin -Ilib --schema=Grimlock::Schema   --connect='["dbi:SQLite:grimlock.db", "", ""]' --deploy

OR FOR DATABASE THAT NO SUCK 

  dbicadmin -Ilib --schema=Grimlock::Schema   --connect='["dbi:Pg:dbname=grimlock", "grimlock", "king!"]' --deploy

NOW RUN TEST SERVER 

  perl grimlock_web_server.pl

IF NO EXPLODE, GRIMLOCK SAVE BLOG FOR YOU

=head1 DESCRIPTION

ME GRIMLOCK NO LIKE HAVING TO RUN APACHE TO USE BLOG LIKE MOVABLE TYPE.  ME GRIMLOCK ALSO HATE WORDPRESS, STUPID REMOTE SHELL WITH WEB BLOG FEATURE.

SO ME GRIMLOCK MAKE THIS BLOG SO I CAN WRITE ABOUT PETRO RABBITS, KICKING BUTT, AND MUNCHING METAL.

ME GRIMLOCK KING!

=head1 TODO

ME GRIMLOCK WRITE BAD ASS SOFTWARE BUT NO HAVE TIME TO WRITE EVERYTHING AT ONCE.  THIS BLOG NEED:

1. BETTER DESIGN.  DESIGN SUCK AND LOOK BAD.
2. EDIT SCREENS.  WHOOPS FORGOT TO MAKE THOSE.
3. SEARCH.  I GUESS USE SOMETHING LIKE LUCY FOR DEFAULT SEARCH, WHAT, ME LOOK LIKE GOOGLE TO YOU?
4. WORKER PROCESS THINGY.  ME WANT PROCESS THINGS IN GOOD SOFTWARE DESIGN METHODOLOGY SO ME NO MAKE WEB APP DO LOTS OF WORK.
5. ATTACHMENTS.  IMAGES OF SLUDGE GETTING BUTT KICKED BY DEVASTATOR MAKE GRIMLOCK LAUGH, ME WANT UPLOAD EVERYDAY.
6. REMOVE ::NEXT STUFF FROM VIEW::TT.  NEXT IS DUMB. ME NO LIKE.

=head1 LICENSE

ME GRIMLOCK WANT SHARE BEAUTIFUL SOFTWARE ME WRITE WITH WORLD.  ME GRIMLOCK SAY THIS SOFTWARE RELEASE UNDER ARTISTIC LICENSE.

SEE L<perlartistic>.

=head1 AUTHOR

ME, GRIMLOCK!

GRIMLOCK NO USE EMAIL, EMAIL BORING. EMAIL THIS GUY INSTEAD: L<mailto:dhoss@cpan.org>


=head1 SEE ALSO

L<http://www.imdb.com/title/tt0092106/>

=cut

1;
