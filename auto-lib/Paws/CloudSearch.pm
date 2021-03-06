package Paws::CloudSearch;
  use Moose;
  sub service { 'cloudsearch' }
  sub signing_name { 'cloudsearch' }
  sub version { '2013-01-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 509 and $_[0]->code eq 'BandwidthLimitExceeded' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  
  sub BuildSuggesters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::BuildSuggesters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DefineAnalysisScheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DefineAnalysisScheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DefineExpression {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DefineExpression', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DefineIndexField {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DefineIndexField', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DefineSuggester {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DefineSuggester', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnalysisScheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteAnalysisScheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExpression {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteExpression', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIndexField {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteIndexField', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSuggester {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DeleteSuggester', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAnalysisSchemes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeAnalysisSchemes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAvailabilityOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeAvailabilityOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExpressions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeExpressions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIndexFields {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeIndexFields', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeScalingParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServiceAccessPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeServiceAccessPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSuggesters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::DescribeSuggesters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IndexDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::IndexDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::ListDomainNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAvailabilityOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::UpdateAvailabilityOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScalingParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::UpdateScalingParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceAccessPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudSearch::UpdateServiceAccessPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BuildSuggesters CreateDomain DefineAnalysisScheme DefineExpression DefineIndexField DefineSuggester DeleteAnalysisScheme DeleteDomain DeleteExpression DeleteIndexField DeleteSuggester DescribeAnalysisSchemes DescribeAvailabilityOptions DescribeDomains DescribeExpressions DescribeIndexFields DescribeScalingParameters DescribeServiceAccessPolicies DescribeSuggesters IndexDocuments ListDomainNames UpdateAvailabilityOptions UpdateScalingParameters UpdateServiceAccessPolicies / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch - Perl Interface to AWS Amazon CloudSearch

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudSearch');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon CloudSearch Configuration Service

You use the Amazon CloudSearch configuration service to create,
configure, and manage search domains. Configuration service requests
are submitted using the AWS Query protocol. AWS Query requests are HTTP
or HTTPS requests submitted via HTTP GET or POST with a query parameter
named Action.

The endpoint for configuration service requests is region-specific:
cloudsearch.I<region>.amazonaws.com. For example,
cloudsearch.us-east-1.amazonaws.com. For a current list of supported
regions and endpoints, see Regions and Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BuildSuggesters

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::BuildSuggesters>

Returns: a L<Paws::CloudSearch::BuildSuggestersResponse> instance

Indexes the search suggestions. For more information, see Configuring
Suggesters
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters)
in the I<Amazon CloudSearch Developer Guide>.


=head2 CreateDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::CreateDomain>

Returns: a L<Paws::CloudSearch::CreateDomainResponse> instance

Creates a new search domain. For more information, see Creating a
Search Domain
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DefineAnalysisScheme

=over

=item AnalysisScheme => L<Paws::CloudSearch::AnalysisScheme>

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::DefineAnalysisScheme>

Returns: a L<Paws::CloudSearch::DefineAnalysisSchemeResponse> instance

Configures an analysis scheme that can be applied to a C<text> or
C<text-array> field to define language-specific text processing
options. For more information, see Configuring Analysis Schemes
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DefineExpression

=over

=item DomainName => Str

=item Expression => L<Paws::CloudSearch::Expression>


=back

Each argument is described in detail in: L<Paws::CloudSearch::DefineExpression>

Returns: a L<Paws::CloudSearch::DefineExpressionResponse> instance

Configures an C<Expression> for the search domain. Used to create new
expressions and modify existing ones. If the expression exists, the new
configuration replaces the old one. For more information, see
Configuring Expressions
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DefineIndexField

=over

=item DomainName => Str

=item IndexField => L<Paws::CloudSearch::IndexField>


=back

Each argument is described in detail in: L<Paws::CloudSearch::DefineIndexField>

Returns: a L<Paws::CloudSearch::DefineIndexFieldResponse> instance

Configures an C<IndexField> for the search domain. Used to create new
fields and modify existing ones. You must specify the name of the
domain you are configuring and an index field configuration. The index
field configuration specifies a unique name, the index field type, and
the options you want to configure for the field. The options you can
specify depend on the C<IndexFieldType>. If the field exists, the new
configuration replaces the old one. For more information, see
Configuring Index Fields
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DefineSuggester

=over

=item DomainName => Str

=item Suggester => L<Paws::CloudSearch::Suggester>


=back

Each argument is described in detail in: L<Paws::CloudSearch::DefineSuggester>

Returns: a L<Paws::CloudSearch::DefineSuggesterResponse> instance

Configures a suggester for a domain. A suggester enables you to display
possible matches before users finish typing their queries. When you
configure a suggester, you must specify the name of the text field you
want to search for possible matches and a unique name for the
suggester. For more information, see Getting Search Suggestions
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DeleteAnalysisScheme

=over

=item AnalysisSchemeName => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::DeleteAnalysisScheme>

Returns: a L<Paws::CloudSearch::DeleteAnalysisSchemeResponse> instance

Deletes an analysis scheme. For more information, see Configuring
Analysis Schemes
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DeleteDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::DeleteDomain>

Returns: a L<Paws::CloudSearch::DeleteDomainResponse> instance

Permanently deletes a search domain and all of its data. Once a domain
has been deleted, it cannot be recovered. For more information, see
Deleting a Search Domain
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DeleteExpression

=over

=item DomainName => Str

=item ExpressionName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::DeleteExpression>

Returns: a L<Paws::CloudSearch::DeleteExpressionResponse> instance

Removes an C<Expression> from the search domain. For more information,
see Configuring Expressions
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DeleteIndexField

=over

=item DomainName => Str

=item IndexFieldName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::DeleteIndexField>

Returns: a L<Paws::CloudSearch::DeleteIndexFieldResponse> instance

Removes an C<IndexField> from the search domain. For more information,
see Configuring Index Fields
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DeleteSuggester

=over

=item DomainName => Str

=item SuggesterName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::DeleteSuggester>

Returns: a L<Paws::CloudSearch::DeleteSuggesterResponse> instance

Deletes a suggester. For more information, see Getting Search
Suggestions
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DescribeAnalysisSchemes

=over

=item DomainName => Str

=item [AnalysisSchemeNames => ArrayRef[Str|Undef]]

=item [Deployed => Bool]


=back

Each argument is described in detail in: L<Paws::CloudSearch::DescribeAnalysisSchemes>

Returns: a L<Paws::CloudSearch::DescribeAnalysisSchemesResponse> instance

Gets the analysis schemes configured for a domain. An analysis scheme
defines language-specific text processing options for a C<text> field.
Can be limited to specific analysis schemes by name. By default, shows
all analysis schemes and includes any pending changes to the
configuration. Set the C<Deployed> option to C<true> to show the active
configuration and exclude pending changes. For more information, see
Configuring Analysis Schemes
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DescribeAvailabilityOptions

=over

=item DomainName => Str

=item [Deployed => Bool]


=back

Each argument is described in detail in: L<Paws::CloudSearch::DescribeAvailabilityOptions>

Returns: a L<Paws::CloudSearch::DescribeAvailabilityOptionsResponse> instance

Gets the availability options configured for a domain. By default,
shows the configuration with any pending changes. Set the C<Deployed>
option to C<true> to show the active configuration and exclude pending
changes. For more information, see Configuring Availability Options
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DescribeDomains

=over

=item [DomainNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudSearch::DescribeDomains>

Returns: a L<Paws::CloudSearch::DescribeDomainsResponse> instance

Gets information about the search domains owned by this account. Can be
limited to specific domains. Shows all domains by default. To get the
number of searchable documents in a domain, use the console or submit a
C<matchall> request to your domain's search endpoint:
C<q=matchall&amp;q.parser=structured&amp;size=0>. For more information,
see Getting Information about a Search Domain
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DescribeExpressions

=over

=item DomainName => Str

=item [Deployed => Bool]

=item [ExpressionNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudSearch::DescribeExpressions>

Returns: a L<Paws::CloudSearch::DescribeExpressionsResponse> instance

Gets the expressions configured for the search domain. Can be limited
to specific expressions by name. By default, shows all expressions and
includes any pending changes to the configuration. Set the C<Deployed>
option to C<true> to show the active configuration and exclude pending
changes. For more information, see Configuring Expressions
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DescribeIndexFields

=over

=item DomainName => Str

=item [Deployed => Bool]

=item [FieldNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudSearch::DescribeIndexFields>

Returns: a L<Paws::CloudSearch::DescribeIndexFieldsResponse> instance

Gets information about the index fields configured for the search
domain. Can be limited to specific fields by name. By default, shows
all fields and includes any pending changes to the configuration. Set
the C<Deployed> option to C<true> to show the active configuration and
exclude pending changes. For more information, see Getting Domain
Information
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DescribeScalingParameters

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::DescribeScalingParameters>

Returns: a L<Paws::CloudSearch::DescribeScalingParametersResponse> instance

Gets the scaling parameters configured for a domain. A domain's scaling
parameters specify the desired search instance type and replication
count. For more information, see Configuring Scaling Options
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DescribeServiceAccessPolicies

=over

=item DomainName => Str

=item [Deployed => Bool]


=back

Each argument is described in detail in: L<Paws::CloudSearch::DescribeServiceAccessPolicies>

Returns: a L<Paws::CloudSearch::DescribeServiceAccessPoliciesResponse> instance

Gets information about the access policies that control access to the
domain's document and search endpoints. By default, shows the
configuration with any pending changes. Set the C<Deployed> option to
C<true> to show the active configuration and exclude pending changes.
For more information, see Configuring Access for a Search Domain
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 DescribeSuggesters

=over

=item DomainName => Str

=item [Deployed => Bool]

=item [SuggesterNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudSearch::DescribeSuggesters>

Returns: a L<Paws::CloudSearch::DescribeSuggestersResponse> instance

Gets the suggesters configured for a domain. A suggester enables you to
display possible matches before users finish typing their queries. Can
be limited to specific suggesters by name. By default, shows all
suggesters and includes any pending changes to the configuration. Set
the C<Deployed> option to C<true> to show the active configuration and
exclude pending changes. For more information, see Getting Search
Suggestions
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 IndexDocuments

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::IndexDocuments>

Returns: a L<Paws::CloudSearch::IndexDocumentsResponse> instance

Tells the search domain to start indexing its documents using the
latest indexing options. This operation must be invoked to activate
options whose OptionStatus is C<RequiresIndexDocuments>.


=head2 ListDomainNames

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::CloudSearch::ListDomainNames>

Returns: a L<Paws::CloudSearch::ListDomainNamesResponse> instance

Lists all search domains owned by an account.


=head2 UpdateAvailabilityOptions

=over

=item DomainName => Str

=item MultiAZ => Bool


=back

Each argument is described in detail in: L<Paws::CloudSearch::UpdateAvailabilityOptions>

Returns: a L<Paws::CloudSearch::UpdateAvailabilityOptionsResponse> instance

Configures the availability options for a domain. Enabling the Multi-AZ
option expands an Amazon CloudSearch domain to an additional
Availability Zone in the same Region to increase fault tolerance in the
event of a service disruption. Changes to the Multi-AZ option can take
about half an hour to become active. For more information, see
Configuring Availability Options
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 UpdateScalingParameters

=over

=item DomainName => Str

=item ScalingParameters => L<Paws::CloudSearch::ScalingParameters>


=back

Each argument is described in detail in: L<Paws::CloudSearch::UpdateScalingParameters>

Returns: a L<Paws::CloudSearch::UpdateScalingParametersResponse> instance

Configures scaling parameters for a domain. A domain's scaling
parameters specify the desired search instance type and replication
count. Amazon CloudSearch will still automatically scale your domain
based on the volume of data and traffic, but not below the desired
instance type and replication count. If the Multi-AZ option is enabled,
these values control the resources used per Availability Zone. For more
information, see Configuring Scaling Options
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html)
in the I<Amazon CloudSearch Developer Guide>.


=head2 UpdateServiceAccessPolicies

=over

=item AccessPolicies => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CloudSearch::UpdateServiceAccessPolicies>

Returns: a L<Paws::CloudSearch::UpdateServiceAccessPoliciesResponse> instance

Configures the access rules that control access to the domain's
document and search endpoints. For more information, see Configuring
Access for an Amazon CloudSearch Domain
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

