## Module AWS.Pricing

<p>AWS Price List Service API (AWS Price List Service) is a centralized and convenient way to programmatically query Amazon Web Services for services, products, and pricing information. The AWS Price List Service uses standardized product attributes such as <code>Location</code>, <code>Storage Class</code>, and <code>Operating System</code>, and provides prices at the SKU level. You can use the AWS Price List Service to build cost control and scenario planning tools, reconcile billing data, forecast future spend for budgeting purposes, and provide cost benefit analysis that compare your internal workloads with AWS.</p> <p>Use <code>GetServices</code> without a service code to retrieve the service codes for all AWS services, then <code>GetServices</code> with a service code to retreive the attribute names for that service. After you have the service code and attribute names, you can use <code>GetAttributeValues</code> to see what values are available for an attribute. With the service code and an attribute name and value, you can use <code>GetProducts</code> to find specific products that you're interested in, such as an <code>AmazonEC2</code> instance, with a <code>Provisioned IOPS</code> <code>volumeType</code>.</p> <p>Service Endpoint</p> <p>AWS Price List Service API provides the following two endpoints:</p> <ul> <li> <p>https://api.pricing.us-east-1.amazonaws.com</p> </li> <li> <p>https://api.pricing.ap-south-1.amazonaws.com</p> </li> </ul>

#### `describeServices`

``` purescript
describeServices :: forall eff. DescribeServicesRequest -> Aff (exception :: EXCEPTION | eff) DescribeServicesResponse
```

<p>Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as <code>AmazonEC2</code>, to get information specific to that service, such as the attribute names available for that service. For example, some of the attribute names available for EC2 are <code>volumeType</code>, <code>maxIopsVolume</code>, <code>operation</code>, <code>locationType</code>, and <code>instanceCapacity10xlarge</code>.</p>

#### `getAttributeValues`

``` purescript
getAttributeValues :: forall eff. GetAttributeValuesRequest -> Aff (exception :: EXCEPTION | eff) GetAttributeValuesResponse
```

<p>Returns a list of attribute values. Attibutes are similar to the details in a Price List API offer file. For a list of available attributes, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs">Offer File Definitions</a> in the <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html">AWS Billing and Cost Management User Guide</a>.</p>

#### `getProducts`

``` purescript
getProducts :: forall eff. GetProductsRequest -> Aff (exception :: EXCEPTION | eff) GetProductsResponse
```

<p>Returns a list of all products that match the filter criteria.</p>

#### `AttributeNameList`

``` purescript
newtype AttributeNameList
  = AttributeNameList (Array String)
```

##### Instances
``` purescript
Newtype AttributeNameList _
Generic AttributeNameList _
Show AttributeNameList
Decode AttributeNameList
Encode AttributeNameList
```

#### `AttributeValue`

``` purescript
newtype AttributeValue
  = AttributeValue { "Value" :: NullOrUndefined (String) }
```

<p>The values of a given attribute, such as <code>Throughput Optimized HDD</code> or <code>Provisioned IOPS</code> for the <code>Amazon EC2</code> <code>volumeType</code> attribute.</p>

##### Instances
``` purescript
Newtype AttributeValue _
Generic AttributeValue _
Show AttributeValue
Decode AttributeValue
Encode AttributeValue
```

#### `newAttributeValue`

``` purescript
newAttributeValue :: AttributeValue
```

Constructs AttributeValue from required parameters

#### `newAttributeValue'`

``` purescript
newAttributeValue' :: ({ "Value" :: NullOrUndefined (String) } -> { "Value" :: NullOrUndefined (String) }) -> AttributeValue
```

Constructs AttributeValue's fields from required parameters

#### `AttributeValueList`

``` purescript
newtype AttributeValueList
  = AttributeValueList (Array AttributeValue)
```

##### Instances
``` purescript
Newtype AttributeValueList _
Generic AttributeValueList _
Show AttributeValueList
Decode AttributeValueList
Encode AttributeValueList
```

#### `BoxedInteger`

``` purescript
newtype BoxedInteger
  = BoxedInteger Int
```

##### Instances
``` purescript
Newtype BoxedInteger _
Generic BoxedInteger _
Show BoxedInteger
Decode BoxedInteger
Encode BoxedInteger
```

#### `DescribeServicesRequest`

``` purescript
newtype DescribeServicesRequest
  = DescribeServicesRequest { "ServiceCode" :: NullOrUndefined (String), "FormatVersion" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (BoxedInteger) }
```

##### Instances
``` purescript
Newtype DescribeServicesRequest _
Generic DescribeServicesRequest _
Show DescribeServicesRequest
Decode DescribeServicesRequest
Encode DescribeServicesRequest
```

#### `newDescribeServicesRequest`

``` purescript
newDescribeServicesRequest :: DescribeServicesRequest
```

Constructs DescribeServicesRequest from required parameters

#### `newDescribeServicesRequest'`

``` purescript
newDescribeServicesRequest' :: ({ "ServiceCode" :: NullOrUndefined (String), "FormatVersion" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (BoxedInteger) } -> { "ServiceCode" :: NullOrUndefined (String), "FormatVersion" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (BoxedInteger) }) -> DescribeServicesRequest
```

Constructs DescribeServicesRequest's fields from required parameters

#### `DescribeServicesResponse`

``` purescript
newtype DescribeServicesResponse
  = DescribeServicesResponse { "Services" :: NullOrUndefined (ServiceList), "FormatVersion" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeServicesResponse _
Generic DescribeServicesResponse _
Show DescribeServicesResponse
Decode DescribeServicesResponse
Encode DescribeServicesResponse
```

#### `newDescribeServicesResponse`

``` purescript
newDescribeServicesResponse :: DescribeServicesResponse
```

Constructs DescribeServicesResponse from required parameters

#### `newDescribeServicesResponse'`

``` purescript
newDescribeServicesResponse' :: ({ "Services" :: NullOrUndefined (ServiceList), "FormatVersion" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String) } -> { "Services" :: NullOrUndefined (ServiceList), "FormatVersion" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String) }) -> DescribeServicesResponse
```

Constructs DescribeServicesResponse's fields from required parameters

#### `ExpiredNextTokenException`

``` purescript
newtype ExpiredNextTokenException
  = ExpiredNextTokenException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The pagination token expired. Try again without a pagination token.</p>

##### Instances
``` purescript
Newtype ExpiredNextTokenException _
Generic ExpiredNextTokenException _
Show ExpiredNextTokenException
Decode ExpiredNextTokenException
Encode ExpiredNextTokenException
```

#### `newExpiredNextTokenException`

``` purescript
newExpiredNextTokenException :: ExpiredNextTokenException
```

Constructs ExpiredNextTokenException from required parameters

#### `newExpiredNextTokenException'`

``` purescript
newExpiredNextTokenException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> ExpiredNextTokenException
```

Constructs ExpiredNextTokenException's fields from required parameters

#### `Filter`

``` purescript
newtype Filter
  = Filter { "Type" :: FilterType, "Field" :: String, "Value" :: String }
```

<p>The constraints that you want all returned products to match.</p>

##### Instances
``` purescript
Newtype Filter _
Generic Filter _
Show Filter
Decode Filter
Encode Filter
```

#### `newFilter`

``` purescript
newFilter :: String -> FilterType -> String -> Filter
```

Constructs Filter from required parameters

#### `newFilter'`

``` purescript
newFilter' :: String -> FilterType -> String -> ({ "Type" :: FilterType, "Field" :: String, "Value" :: String } -> { "Type" :: FilterType, "Field" :: String, "Value" :: String }) -> Filter
```

Constructs Filter's fields from required parameters

#### `FilterType`

``` purescript
newtype FilterType
  = FilterType String
```

##### Instances
``` purescript
Newtype FilterType _
Generic FilterType _
Show FilterType
Decode FilterType
Encode FilterType
```

#### `Filters`

``` purescript
newtype Filters
  = Filters (Array Filter)
```

##### Instances
``` purescript
Newtype Filters _
Generic Filters _
Show Filters
Decode Filters
Encode Filters
```

#### `GetAttributeValuesRequest`

``` purescript
newtype GetAttributeValuesRequest
  = GetAttributeValuesRequest { "ServiceCode" :: String, "AttributeName" :: String, "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (BoxedInteger) }
```

##### Instances
``` purescript
Newtype GetAttributeValuesRequest _
Generic GetAttributeValuesRequest _
Show GetAttributeValuesRequest
Decode GetAttributeValuesRequest
Encode GetAttributeValuesRequest
```

#### `newGetAttributeValuesRequest`

``` purescript
newGetAttributeValuesRequest :: String -> String -> GetAttributeValuesRequest
```

Constructs GetAttributeValuesRequest from required parameters

#### `newGetAttributeValuesRequest'`

``` purescript
newGetAttributeValuesRequest' :: String -> String -> ({ "ServiceCode" :: String, "AttributeName" :: String, "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (BoxedInteger) } -> { "ServiceCode" :: String, "AttributeName" :: String, "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (BoxedInteger) }) -> GetAttributeValuesRequest
```

Constructs GetAttributeValuesRequest's fields from required parameters

#### `GetAttributeValuesResponse`

``` purescript
newtype GetAttributeValuesResponse
  = GetAttributeValuesResponse { "AttributeValues" :: NullOrUndefined (AttributeValueList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetAttributeValuesResponse _
Generic GetAttributeValuesResponse _
Show GetAttributeValuesResponse
Decode GetAttributeValuesResponse
Encode GetAttributeValuesResponse
```

#### `newGetAttributeValuesResponse`

``` purescript
newGetAttributeValuesResponse :: GetAttributeValuesResponse
```

Constructs GetAttributeValuesResponse from required parameters

#### `newGetAttributeValuesResponse'`

``` purescript
newGetAttributeValuesResponse' :: ({ "AttributeValues" :: NullOrUndefined (AttributeValueList), "NextToken" :: NullOrUndefined (String) } -> { "AttributeValues" :: NullOrUndefined (AttributeValueList), "NextToken" :: NullOrUndefined (String) }) -> GetAttributeValuesResponse
```

Constructs GetAttributeValuesResponse's fields from required parameters

#### `GetProductsRequest`

``` purescript
newtype GetProductsRequest
  = GetProductsRequest { "ServiceCode" :: NullOrUndefined (String), "Filters" :: NullOrUndefined (Filters), "FormatVersion" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (BoxedInteger) }
```

##### Instances
``` purescript
Newtype GetProductsRequest _
Generic GetProductsRequest _
Show GetProductsRequest
Decode GetProductsRequest
Encode GetProductsRequest
```

#### `newGetProductsRequest`

``` purescript
newGetProductsRequest :: GetProductsRequest
```

Constructs GetProductsRequest from required parameters

#### `newGetProductsRequest'`

``` purescript
newGetProductsRequest' :: ({ "ServiceCode" :: NullOrUndefined (String), "Filters" :: NullOrUndefined (Filters), "FormatVersion" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (BoxedInteger) } -> { "ServiceCode" :: NullOrUndefined (String), "Filters" :: NullOrUndefined (Filters), "FormatVersion" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (BoxedInteger) }) -> GetProductsRequest
```

Constructs GetProductsRequest's fields from required parameters

#### `GetProductsResponse`

``` purescript
newtype GetProductsResponse
  = GetProductsResponse { "FormatVersion" :: NullOrUndefined (String), "PriceList" :: NullOrUndefined (PriceList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetProductsResponse _
Generic GetProductsResponse _
Show GetProductsResponse
Decode GetProductsResponse
Encode GetProductsResponse
```

#### `newGetProductsResponse`

``` purescript
newGetProductsResponse :: GetProductsResponse
```

Constructs GetProductsResponse from required parameters

#### `newGetProductsResponse'`

``` purescript
newGetProductsResponse' :: ({ "FormatVersion" :: NullOrUndefined (String), "PriceList" :: NullOrUndefined (PriceList), "NextToken" :: NullOrUndefined (String) } -> { "FormatVersion" :: NullOrUndefined (String), "PriceList" :: NullOrUndefined (PriceList), "NextToken" :: NullOrUndefined (String) }) -> GetProductsResponse
```

Constructs GetProductsResponse's fields from required parameters

#### `InternalErrorException`

``` purescript
newtype InternalErrorException
  = InternalErrorException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>An error on the server occurred during the processing of your request. Try again later.</p>

##### Instances
``` purescript
Newtype InternalErrorException _
Generic InternalErrorException _
Show InternalErrorException
Decode InternalErrorException
Encode InternalErrorException
```

#### `newInternalErrorException`

``` purescript
newInternalErrorException :: InternalErrorException
```

Constructs InternalErrorException from required parameters

#### `newInternalErrorException'`

``` purescript
newInternalErrorException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> InternalErrorException
```

Constructs InternalErrorException's fields from required parameters

#### `InvalidNextTokenException`

``` purescript
newtype InvalidNextTokenException
  = InvalidNextTokenException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The pagination token is invalid. Try again without a pagination token.</p>

##### Instances
``` purescript
Newtype InvalidNextTokenException _
Generic InvalidNextTokenException _
Show InvalidNextTokenException
Decode InvalidNextTokenException
Encode InvalidNextTokenException
```

#### `newInvalidNextTokenException`

``` purescript
newInvalidNextTokenException :: InvalidNextTokenException
```

Constructs InvalidNextTokenException from required parameters

#### `newInvalidNextTokenException'`

``` purescript
newInvalidNextTokenException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> InvalidNextTokenException
```

Constructs InvalidNextTokenException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>One or more parameters had an invalid value.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The requested resource can't be found.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `PriceList`

``` purescript
newtype PriceList
  = PriceList (Array PriceListItemJSON)
```

##### Instances
``` purescript
Newtype PriceList _
Generic PriceList _
Show PriceList
Decode PriceList
Encode PriceList
```

#### `PriceListItemJSON`

``` purescript
newtype PriceListItemJSON
  = PriceListItemJSON String
```

##### Instances
``` purescript
Newtype PriceListItemJSON _
Generic PriceListItemJSON _
Show PriceListItemJSON
Decode PriceListItemJSON
Encode PriceListItemJSON
```

#### `Service`

``` purescript
newtype Service
  = Service { "ServiceCode" :: NullOrUndefined (String), "AttributeNames" :: NullOrUndefined (AttributeNameList) }
```

<p>The metadata for a service, such as the service code and available attribute names.</p>

##### Instances
``` purescript
Newtype Service _
Generic Service _
Show Service
Decode Service
Encode Service
```

#### `newService`

``` purescript
newService :: Service
```

Constructs Service from required parameters

#### `newService'`

``` purescript
newService' :: ({ "ServiceCode" :: NullOrUndefined (String), "AttributeNames" :: NullOrUndefined (AttributeNameList) } -> { "ServiceCode" :: NullOrUndefined (String), "AttributeNames" :: NullOrUndefined (AttributeNameList) }) -> Service
```

Constructs Service's fields from required parameters

#### `ServiceList`

``` purescript
newtype ServiceList
  = ServiceList (Array Service)
```

##### Instances
``` purescript
Newtype ServiceList _
Generic ServiceList _
Show ServiceList
Decode ServiceList
Encode ServiceList
```

#### `ErrorMessage'`

``` purescript
newtype ErrorMessage'
  = ErrorMessage' String
```

##### Instances
``` purescript
Newtype ErrorMessage' _
Generic ErrorMessage' _
Show ErrorMessage'
Decode ErrorMessage'
Encode ErrorMessage'
```

