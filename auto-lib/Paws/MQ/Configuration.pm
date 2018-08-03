package Paws::MQ::Configuration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EngineType => (is => 'ro', isa => 'Str', request_name => 'engineType', traits => ['NameInRequest']);
  has EngineVersion => (is => 'ro', isa => 'Str', request_name => 'engineVersion', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has LatestRevision => (is => 'ro', isa => 'Paws::MQ::ConfigurationRevision', request_name => 'latestRevision', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::Configuration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::Configuration object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::Configuration object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Returns information about all configurations.

=head1 ATTRIBUTES


=head2 Arn => Str

  Required. The ARN of the configuration.


=head2 Created => Str

  Required. The date and time of the configuration revision.


=head2 Description => Str

  Required. The description of the configuration.


=head2 EngineType => Str

  Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.


=head2 EngineVersion => Str

  Required. The version of the broker engine.


=head2 Id => Str

  Required. The unique ID that Amazon MQ generates for the configuration.


=head2 LatestRevision => L<Paws::MQ::ConfigurationRevision>

  Required. The latest revision of the configuration.


=head2 Name => Str

  Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

