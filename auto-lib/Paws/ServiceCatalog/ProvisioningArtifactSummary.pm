package Paws::ServiceCatalog::ProvisioningArtifactSummary;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactMetadata => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactInfo');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisioningArtifactSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisioningArtifactSummary object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., ProvisioningArtifactMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisioningArtifactSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

Summary information about a provisioning artifact.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The UTC timestamp of the creation time.


=head2 Description => Str

  The provisioning artifact description.


=head2 Id => Str

  The provisioning artifact identifier.


=head2 Name => Str

  The provisioning artifact name.


=head2 ProvisioningArtifactMetadata => L<Paws::ServiceCatalog::ProvisioningArtifactInfo>

  The provisioning artifact metadata. This data is used with products
created by AWS Marketplace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
