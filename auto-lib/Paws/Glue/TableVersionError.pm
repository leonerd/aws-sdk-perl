package Paws::Glue::TableVersionError;
  use Moose;
  has ErrorDetail => (is => 'ro', isa => 'Paws::Glue::ErrorDetail');
  has TableName => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TableVersionError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TableVersionError object:

  $service_obj->Method(Att1 => { ErrorDetail => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TableVersionError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorDetail

=head1 DESCRIPTION

An error record for table-version operations.

=head1 ATTRIBUTES


=head2 ErrorDetail => L<Paws::Glue::ErrorDetail>

  Detail about the error.


=head2 TableName => Str

  The name of the table in question.


=head2 VersionId => Str

  The ID value of the version in question.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

