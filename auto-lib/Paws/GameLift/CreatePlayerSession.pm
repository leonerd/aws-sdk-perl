
package Paws::GameLift::CreatePlayerSession;
  use Moose;
  has GameSessionId => (is => 'ro', isa => 'Str', required => 1);
  has PlayerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlayerSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreatePlayerSessionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreatePlayerSession - Arguments for method CreatePlayerSession on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlayerSession on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method CreatePlayerSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlayerSession.

As an example:

  $service_obj->CreatePlayerSession(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameSessionId => Str

Unique identifier for the game session to add a player to. Game session
ID format is as follows:
"arn:aws:gamelift:E<lt>regionE<gt>::gamesession/fleet-E<lt>fleet
IDE<gt>/E<lt>ID stringE<gt>". The value of E<lt>ID stringE<gt> is
either a custom ID string (if one was specified when the game session
was created) an auto-generated string.



=head2 B<REQUIRED> PlayerId => Str

Unique identifier for the player to be added.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlayerSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

