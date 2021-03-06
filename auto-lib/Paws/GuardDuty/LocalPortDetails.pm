package Paws::GuardDuty::LocalPortDetails;
  use Moose;
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has PortName => (is => 'ro', isa => 'Str', request_name => 'portName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::LocalPortDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::LocalPortDetails object:

  $service_obj->Method(Att1 => { Port => $value, ..., PortName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::LocalPortDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Port

=head1 DESCRIPTION

Local port information of the connection.

=head1 ATTRIBUTES


=head2 Port => Int

  Port number of the local connection.


=head2 PortName => Str

  Port name of the local connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

