
package Paws::Rekognition::GetPersonTracking;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPersonTracking');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetPersonTrackingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetPersonTracking - Arguments for method GetPersonTracking on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPersonTracking on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method GetPersonTracking.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPersonTracking.

As an example:

  $service_obj->GetPersonTracking(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier for a job that tracks persons in a video. You get the
C<JobId> from a call to C<StartPersonTracking>.



=head2 MaxResults => Int

Maximum number of tracked persons to return. The default is 1000.



=head2 NextToken => Str

If the previous response was incomplete (because there are more persons
to retrieve), Rekognition Video returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
persons.



=head2 SortBy => Str

Sort to use for elements in the C<Persons> array. Use C<TIMESTAMP> to
sort array elements by the time persons are detected. Use C<INDEX> to
sort by the tracked persons. If you sort by C<INDEX>, the array
elements for each person are sorted by detection confidence. The
default sort is by C<TIMESTAMP>.

Valid values are: C<"INDEX">, C<"TIMESTAMP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPersonTracking in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
