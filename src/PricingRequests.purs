
module AWS.Pricing.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Pricing as Pricing
import AWS.Pricing.Types as PricingTypes


-- | <p>Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as <code>AmazonEC2</code>, to get information specific to that service, such as the attribute names available for that service. For example, some of the attribute names available for EC2 are <code>volumeType</code>, <code>maxIopsVolume</code>, <code>operation</code>, <code>locationType</code>, and <code>instanceCapacity10xlarge</code>.</p>
describeServices :: forall eff. Pricing.Service -> PricingTypes.DescribeServicesRequest -> Aff (exception :: EXCEPTION | eff) PricingTypes.DescribeServicesResponse
describeServices (Pricing.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeServices"


-- | <p>Returns a list of attribute values. Attibutes are similar to the details in a Price List API offer file. For a list of available attributes, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs">Offer File Definitions</a> in the <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html">AWS Billing and Cost Management User Guide</a>.</p>
getAttributeValues :: forall eff. Pricing.Service -> PricingTypes.GetAttributeValuesRequest -> Aff (exception :: EXCEPTION | eff) PricingTypes.GetAttributeValuesResponse
getAttributeValues (Pricing.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getAttributeValues"


-- | <p>Returns a list of all products that match the filter criteria.</p>
getProducts :: forall eff. Pricing.Service -> PricingTypes.GetProductsRequest -> Aff (exception :: EXCEPTION | eff) PricingTypes.GetProductsResponse
getProducts (Pricing.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getProducts"
