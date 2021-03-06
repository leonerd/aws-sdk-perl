package Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes;
  use Moose;
  has Identity => (is => 'ro', isa => 'Str', request_name => 'identity', traits => ['NameInRequest']);
  has ScheduledEventId => (is => 'ro', isa => 'Int', request_name => 'scheduledEventId', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes object:

  $service_obj->Method(Att1 => { Identity => $value, ..., ScheduledEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Identity

=head1 DESCRIPTION

Provides the details of the C<DecisionTaskStarted> event.

=head1 ATTRIBUTES


=head2 Identity => Str

  Identity of the decider making the request. This enables diagnostic
tracing when problems arise. The form of this identity is user defined.


=head2 B<REQUIRED> ScheduledEventId => Int

  The ID of the C<DecisionTaskScheduled> event that was recorded when
this decision task was scheduled. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

