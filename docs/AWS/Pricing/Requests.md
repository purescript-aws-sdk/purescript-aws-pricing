## Module AWS.Pricing.Requests

#### `describeServices`

``` purescript
describeServices :: forall eff. Service -> DescribeServicesRequest -> Aff (exception :: EXCEPTION | eff) DescribeServicesResponse
```

<p>Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as <code>AmazonEC2</code>, to get information specific to that service, such as the attribute names available for that service. For example, some of the attribute names available for EC2 are <code>volumeType</code>, <code>maxIopsVolume</code>, <code>operation</code>, <code>locationType</code>, and <code>instanceCapacity10xlarge</code>.</p>

#### `getAttributeValues`

``` purescript
getAttributeValues :: forall eff. Service -> GetAttributeValuesRequest -> Aff (exception :: EXCEPTION | eff) GetAttributeValuesResponse
```

<p>Returns a list of attribute values. Attibutes are similar to the details in a Price List API offer file. For a list of available attributes, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs">Offer File Definitions</a> in the <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html">AWS Billing and Cost Management User Guide</a>.</p>

#### `getProducts`

``` purescript
getProducts :: forall eff. Service -> GetProductsRequest -> Aff (exception :: EXCEPTION | eff) GetProductsResponse
```

<p>Returns a list of all products that match the filter criteria.</p>


