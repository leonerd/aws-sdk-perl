
package Paws::StorageGateway::DescribeChapCredentials;
  use Moose;
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChapCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeChapCredentialsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeChapCredentials - Arguments for method DescribeChapCredentials on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChapCredentials on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeChapCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChapCredentials.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To describe CHAP credetnitals for an iSCSI
    # Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
    # credentials information for a specified iSCSI target, one for each
    # target-initiator pair.
    my $DescribeChapCredentialsOutput =
      $storagegateway->DescribeChapCredentials(
      {
        'TargetARN' =>
'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume'
      }
      );

    # Results:
    my $ChapCredentials = $DescribeChapCredentialsOutput->ChapCredentials;

    # Returns a L<Paws::StorageGateway::DescribeChapCredentialsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeChapCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetARN => Str

The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
DescribeStorediSCSIVolumes operation to return to retrieve the
TargetARN for specified VolumeARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChapCredentials in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

