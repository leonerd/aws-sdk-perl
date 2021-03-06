
package Paws::ApiGateway::DeleteGatewayResponse;
  use Moose;
  has ResponseType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'response_type', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGatewayResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/gatewayresponses/{response_type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeleteGatewayResponse - Arguments for method DeleteGatewayResponse on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGatewayResponse on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method DeleteGatewayResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGatewayResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->DeleteGatewayResponse(
      ResponseType => 'DEFAULT_4XX',
      RestApiId    => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/apigateway/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResponseType => Str

[Required]

The response type of the associated GatewayResponse. Valid values are

=over

=item * ACCESS_DENIED

=item * API_CONFIGURATION_ERROR

=item * AUTHORIZER_FAILURE

=item * AUTHORIZER_CONFIGURATION_ERROR

=item * BAD_REQUEST_PARAMETERS

=item * BAD_REQUEST_BODY

=item * DEFAULT_4XX

=item * DEFAULT_5XX

=item * EXPIRED_TOKEN

=item * INVALID_SIGNATURE

=item * INTEGRATION_FAILURE

=item * INTEGRATION_TIMEOUT

=item * INVALID_API_KEY

=item * MISSING_AUTHENTICATION_TOKEN

=item * QUOTA_EXCEEDED

=item * REQUEST_TOO_LARGE

=item * RESOURCE_NOT_FOUND

=item * THROTTLED

=item * UNAUTHORIZED

=item * UNSUPPORTED_MEDIA_TYPE

=back


Valid values are: C<"DEFAULT_4XX">, C<"DEFAULT_5XX">, C<"RESOURCE_NOT_FOUND">, C<"UNAUTHORIZED">, C<"INVALID_API_KEY">, C<"ACCESS_DENIED">, C<"AUTHORIZER_FAILURE">, C<"AUTHORIZER_CONFIGURATION_ERROR">, C<"INVALID_SIGNATURE">, C<"EXPIRED_TOKEN">, C<"MISSING_AUTHENTICATION_TOKEN">, C<"INTEGRATION_FAILURE">, C<"INTEGRATION_TIMEOUT">, C<"API_CONFIGURATION_ERROR">, C<"UNSUPPORTED_MEDIA_TYPE">, C<"BAD_REQUEST_PARAMETERS">, C<"BAD_REQUEST_BODY">, C<"REQUEST_TOO_LARGE">, C<"THROTTLED">, C<"QUOTA_EXCEEDED">

=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGatewayResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

