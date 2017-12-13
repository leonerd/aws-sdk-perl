
package Paws::WorkMail::DeleteResource;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeleteResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteResource - Arguments for method DeleteResource on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResource on the 
Amazon WorkMail service. Use the attributes of this class
as arguments to method DeleteResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResource.

As an example:

  $service_obj->DeleteResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The identifier associated with the organization for which the resource
is deleted.



=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResource in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
