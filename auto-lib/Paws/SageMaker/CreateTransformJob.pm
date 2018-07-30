
package Paws::SageMaker::CreateTransformJob;
  use Moose;
  has BatchStrategy => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::TransformEnvironmentMap');
  has MaxConcurrentTransforms => (is => 'ro', isa => 'Int');
  has MaxPayloadInMB => (is => 'ro', isa => 'Int');
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TransformInput => (is => 'ro', isa => 'Paws::SageMaker::TransformInput', required => 1);
  has TransformJobName => (is => 'ro', isa => 'Str', required => 1);
  has TransformOutput => (is => 'ro', isa => 'Paws::SageMaker::TransformOutput', required => 1);
  has TransformResources => (is => 'ro', isa => 'Paws::SageMaker::TransformResources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTransformJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateTransformJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTransformJob - Arguments for method CreateTransformJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTransformJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateTransformJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTransformJob.

=head1 SYNOPSIS

    my $sagemaker = Paws->service('SageMaker');
    my $CreateTransformJobResponse = $sagemaker->CreateTransformJob(
      ModelName      => 'MyModelName',
      TransformInput => {
        DataSource => {
          S3DataSource => {
            S3DataType => 'ManifestFile',    # values: ManifestFile, S3Prefix
            S3Uri      => 'MyS3Uri',         # max: 1024

          },

        },
        CompressionType => 'None',             # values: None, Gzip; OPTIONAL
        ContentType     => 'MyContentType',    # max: 256; OPTIONAL
        SplitType => 'None',    # values: None, Line, RecordIO; OPTIONAL
      },
      TransformJobName => 'MyTransformJobName',
      TransformOutput  => {
        S3OutputPath => 'MyS3Uri',       # max: 1024
        Accept       => 'MyAccept',      # max: 256; OPTIONAL
        AssembleWith => 'None',          # values: None, Line; OPTIONAL
        KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      TransformResources => {
        InstanceCount => 1,               # min: 1
        InstanceType  => 'ml.m4.xlarge'
        , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge

      },
      BatchStrategy => 'MultiRecord',    # OPTIONAL
      Environment   => {
        'MyTransformEnvironmentKey' =>
          'MyTransformEnvironmentValue',    # key: max: 1024, value: max: 10240
      },    # OPTIONAL
      MaxConcurrentTransforms => 1,    # OPTIONAL
      MaxPayloadInMB          => 1,    # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyTagKey',         # min: 1, max: 128
          Value => 'MyTagValue',       # max: 256

        },
        ...
      ],                               # OPTIONAL
    );

    # Results:
    my $TransformJobArn = $CreateTransformJobResponse->TransformJobArn;

    # Returns a L<Paws::SageMaker::CreateTransformJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker/CreateTransformJob>

=head1 ATTRIBUTES


=head2 BatchStrategy => Str

Determins the number of records included in a single batch.
C<SingleRecord> means only one record is used per batch. C<MultiRecord>
means a batch is set to contain as many records that could possibly fit
within the C<MaxPayloadInMB> limit.

Valid values are: C<"MultiRecord">, C<"SingleRecord">

=head2 Environment => L<Paws::SageMaker::TransformEnvironmentMap>

The environment variables to set in the Docker container. We support up
to 16 key and values entries in the map.



=head2 MaxConcurrentTransforms => Int

The maximum number of parallel requests on each instance node that can
be launched in a transform job. The default value is C<1>. To allow
Amazon SageMaker to determine the appropriate number for
C<MaxConcurrentTransforms>, set the value to C<0>.



=head2 MaxPayloadInMB => Int

The maximum payload size allowed, in MB. A payload is the data portion
of a record (without metadata). The value in C<MaxPayloadInMB> must be
greater than the size of a single record.You can approximate the size
of a record by dividing the size of your dataset by the number of
records. The value you enter should be proportional to the number of
records you want per batch. It is recommended to enter a slightly
higher value to ensure the records will fit within the maximum payload
size. The default value is C<6> MB. For an unlimited payload size, set
the value to C<0>.



=head2 B<REQUIRED> ModelName => Str

The name of the model that you want to use for the transform job.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. Adding tags is optional. For more
information, see Using Cost Allocation Tags
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.



=head2 B<REQUIRED> TransformInput => L<Paws::SageMaker::TransformInput>

Describes the input source and the way the transform job consumes it.



=head2 B<REQUIRED> TransformJobName => Str

The name of the transform job. The name must be unique within an AWS
Region in an AWS account.



=head2 B<REQUIRED> TransformOutput => L<Paws::SageMaker::TransformOutput>

Describes the results of the transform job.



=head2 B<REQUIRED> TransformResources => L<Paws::SageMaker::TransformResources>

Describes the resources, including ML instance types and ML instance
count, to use for the transform job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTransformJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
