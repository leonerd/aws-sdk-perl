package Paws::CognitoIdp::StringAttributeConstraintsType;
  use Moose;
  has MaxLength => (is => 'ro', isa => 'Str');
  has MinLength => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::StringAttributeConstraintsType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::StringAttributeConstraintsType object:

  $service_obj->Method(Att1 => { MaxLength => $value, ..., MinLength => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::StringAttributeConstraintsType object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxLength

=head1 DESCRIPTION

The type of constraints associated with an attribute of the string
type.

=head1 ATTRIBUTES


=head2 MaxLength => Str

  The maximum length of an attribute value of the string type.


=head2 MinLength => Str

  The minimum length of an attribute value of the string type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
