package Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes;
  use Moose;
  has ScheduledEventId => (is => 'ro', isa => 'Int', request_name => 'scheduledEventId', traits => ['NameInRequest'], required => 1);
  has StartedEventId => (is => 'ro', isa => 'Int', request_name => 'startedEventId', traits => ['NameInRequest'], required => 1);
  has TimeoutType => (is => 'ro', isa => 'Str', request_name => 'timeoutType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes object:

  $service_obj->Method(Att1 => { ScheduledEventId => $value, ..., TimeoutType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ScheduledEventId

=head1 DESCRIPTION

Provides details of the C<LambdaFunctionTimedOut> event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduledEventId => Int

  The ID of the C<LambdaFunctionScheduled> event that was recorded when
this activity task was scheduled. To help diagnose issues, use this
information to trace back the chain of events leading up to this event.


=head2 B<REQUIRED> StartedEventId => Int

  The ID of the C<ActivityTaskStarted> event that was recorded when this
activity task started. To help diagnose issues, use this information to
trace back the chain of events leading up to this event.


=head2 TimeoutType => Str

  The type of the timeout that caused this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

