
module AWS.Pricing.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AttributeNameList = AttributeNameList (Array String)
derive instance newtypeAttributeNameList :: Newtype AttributeNameList _
derive instance repGenericAttributeNameList :: Generic AttributeNameList _
instance showAttributeNameList :: Show AttributeNameList where show = genericShow
instance decodeAttributeNameList :: Decode AttributeNameList where decode = genericDecode options
instance encodeAttributeNameList :: Encode AttributeNameList where encode = genericEncode options



-- | <p>The values of a given attribute, such as <code>Throughput Optimized HDD</code> or <code>Provisioned IOPS</code> for the <code>Amazon EC2</code> <code>volumeType</code> attribute.</p>
newtype AttributeValue = AttributeValue 
  { "Value" :: Maybe (String)
  }
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where decode = genericDecode options
instance encodeAttributeValue :: Encode AttributeValue where encode = genericEncode options

-- | Constructs AttributeValue from required parameters
newAttributeValue :: AttributeValue
newAttributeValue  = AttributeValue { "Value": Nothing }

-- | Constructs AttributeValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttributeValue' :: ( { "Value" :: Maybe (String) } -> {"Value" :: Maybe (String) } ) -> AttributeValue
newAttributeValue'  customize = (AttributeValue <<< customize) { "Value": Nothing }



newtype AttributeValueList = AttributeValueList (Array AttributeValue)
derive instance newtypeAttributeValueList :: Newtype AttributeValueList _
derive instance repGenericAttributeValueList :: Generic AttributeValueList _
instance showAttributeValueList :: Show AttributeValueList where show = genericShow
instance decodeAttributeValueList :: Decode AttributeValueList where decode = genericDecode options
instance encodeAttributeValueList :: Encode AttributeValueList where encode = genericEncode options



newtype BoxedInteger = BoxedInteger Int
derive instance newtypeBoxedInteger :: Newtype BoxedInteger _
derive instance repGenericBoxedInteger :: Generic BoxedInteger _
instance showBoxedInteger :: Show BoxedInteger where show = genericShow
instance decodeBoxedInteger :: Decode BoxedInteger where decode = genericDecode options
instance encodeBoxedInteger :: Encode BoxedInteger where encode = genericEncode options



newtype DescribeServicesRequest = DescribeServicesRequest 
  { "ServiceCode" :: Maybe (String)
  , "FormatVersion" :: Maybe (String)
  , "NextToken" :: Maybe (String)
  , "MaxResults" :: Maybe (BoxedInteger)
  }
derive instance newtypeDescribeServicesRequest :: Newtype DescribeServicesRequest _
derive instance repGenericDescribeServicesRequest :: Generic DescribeServicesRequest _
instance showDescribeServicesRequest :: Show DescribeServicesRequest where show = genericShow
instance decodeDescribeServicesRequest :: Decode DescribeServicesRequest where decode = genericDecode options
instance encodeDescribeServicesRequest :: Encode DescribeServicesRequest where encode = genericEncode options

-- | Constructs DescribeServicesRequest from required parameters
newDescribeServicesRequest :: DescribeServicesRequest
newDescribeServicesRequest  = DescribeServicesRequest { "FormatVersion": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "ServiceCode": Nothing }

-- | Constructs DescribeServicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServicesRequest' :: ( { "ServiceCode" :: Maybe (String) , "FormatVersion" :: Maybe (String) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (BoxedInteger) } -> {"ServiceCode" :: Maybe (String) , "FormatVersion" :: Maybe (String) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (BoxedInteger) } ) -> DescribeServicesRequest
newDescribeServicesRequest'  customize = (DescribeServicesRequest <<< customize) { "FormatVersion": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "ServiceCode": Nothing }



newtype DescribeServicesResponse = DescribeServicesResponse 
  { "Services" :: Maybe (ServiceList)
  , "FormatVersion" :: Maybe (String)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeServicesResponse :: Newtype DescribeServicesResponse _
derive instance repGenericDescribeServicesResponse :: Generic DescribeServicesResponse _
instance showDescribeServicesResponse :: Show DescribeServicesResponse where show = genericShow
instance decodeDescribeServicesResponse :: Decode DescribeServicesResponse where decode = genericDecode options
instance encodeDescribeServicesResponse :: Encode DescribeServicesResponse where encode = genericEncode options

-- | Constructs DescribeServicesResponse from required parameters
newDescribeServicesResponse :: DescribeServicesResponse
newDescribeServicesResponse  = DescribeServicesResponse { "FormatVersion": Nothing, "NextToken": Nothing, "Services": Nothing }

-- | Constructs DescribeServicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServicesResponse' :: ( { "Services" :: Maybe (ServiceList) , "FormatVersion" :: Maybe (String) , "NextToken" :: Maybe (String) } -> {"Services" :: Maybe (ServiceList) , "FormatVersion" :: Maybe (String) , "NextToken" :: Maybe (String) } ) -> DescribeServicesResponse
newDescribeServicesResponse'  customize = (DescribeServicesResponse <<< customize) { "FormatVersion": Nothing, "NextToken": Nothing, "Services": Nothing }



-- | <p>The pagination token expired. Try again without a pagination token.</p>
newtype ExpiredNextTokenException = ExpiredNextTokenException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeExpiredNextTokenException :: Newtype ExpiredNextTokenException _
derive instance repGenericExpiredNextTokenException :: Generic ExpiredNextTokenException _
instance showExpiredNextTokenException :: Show ExpiredNextTokenException where show = genericShow
instance decodeExpiredNextTokenException :: Decode ExpiredNextTokenException where decode = genericDecode options
instance encodeExpiredNextTokenException :: Encode ExpiredNextTokenException where encode = genericEncode options

-- | Constructs ExpiredNextTokenException from required parameters
newExpiredNextTokenException :: ExpiredNextTokenException
newExpiredNextTokenException  = ExpiredNextTokenException { "Message": Nothing }

-- | Constructs ExpiredNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredNextTokenException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> ExpiredNextTokenException
newExpiredNextTokenException'  customize = (ExpiredNextTokenException <<< customize) { "Message": Nothing }



-- | <p>The constraints that you want all returned products to match.</p>
newtype Filter = Filter 
  { "Type" :: (FilterType)
  , "Field" :: (String)
  , "Value" :: (String)
  }
derive instance newtypeFilter :: Newtype Filter _
derive instance repGenericFilter :: Generic Filter _
instance showFilter :: Show Filter where show = genericShow
instance decodeFilter :: Decode Filter where decode = genericDecode options
instance encodeFilter :: Encode Filter where encode = genericEncode options

-- | Constructs Filter from required parameters
newFilter :: String -> FilterType -> String -> Filter
newFilter _Field _Type _Value = Filter { "Field": _Field, "Type": _Type, "Value": _Value }

-- | Constructs Filter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFilter' :: String -> FilterType -> String -> ( { "Type" :: (FilterType) , "Field" :: (String) , "Value" :: (String) } -> {"Type" :: (FilterType) , "Field" :: (String) , "Value" :: (String) } ) -> Filter
newFilter' _Field _Type _Value customize = (Filter <<< customize) { "Field": _Field, "Type": _Type, "Value": _Value }



newtype FilterType = FilterType String
derive instance newtypeFilterType :: Newtype FilterType _
derive instance repGenericFilterType :: Generic FilterType _
instance showFilterType :: Show FilterType where show = genericShow
instance decodeFilterType :: Decode FilterType where decode = genericDecode options
instance encodeFilterType :: Encode FilterType where encode = genericEncode options



newtype Filters = Filters (Array Filter)
derive instance newtypeFilters :: Newtype Filters _
derive instance repGenericFilters :: Generic Filters _
instance showFilters :: Show Filters where show = genericShow
instance decodeFilters :: Decode Filters where decode = genericDecode options
instance encodeFilters :: Encode Filters where encode = genericEncode options



newtype GetAttributeValuesRequest = GetAttributeValuesRequest 
  { "ServiceCode" :: (String)
  , "AttributeName" :: (String)
  , "NextToken" :: Maybe (String)
  , "MaxResults" :: Maybe (BoxedInteger)
  }
derive instance newtypeGetAttributeValuesRequest :: Newtype GetAttributeValuesRequest _
derive instance repGenericGetAttributeValuesRequest :: Generic GetAttributeValuesRequest _
instance showGetAttributeValuesRequest :: Show GetAttributeValuesRequest where show = genericShow
instance decodeGetAttributeValuesRequest :: Decode GetAttributeValuesRequest where decode = genericDecode options
instance encodeGetAttributeValuesRequest :: Encode GetAttributeValuesRequest where encode = genericEncode options

-- | Constructs GetAttributeValuesRequest from required parameters
newGetAttributeValuesRequest :: String -> String -> GetAttributeValuesRequest
newGetAttributeValuesRequest _AttributeName _ServiceCode = GetAttributeValuesRequest { "AttributeName": _AttributeName, "ServiceCode": _ServiceCode, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs GetAttributeValuesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAttributeValuesRequest' :: String -> String -> ( { "ServiceCode" :: (String) , "AttributeName" :: (String) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (BoxedInteger) } -> {"ServiceCode" :: (String) , "AttributeName" :: (String) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (BoxedInteger) } ) -> GetAttributeValuesRequest
newGetAttributeValuesRequest' _AttributeName _ServiceCode customize = (GetAttributeValuesRequest <<< customize) { "AttributeName": _AttributeName, "ServiceCode": _ServiceCode, "MaxResults": Nothing, "NextToken": Nothing }



newtype GetAttributeValuesResponse = GetAttributeValuesResponse 
  { "AttributeValues" :: Maybe (AttributeValueList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeGetAttributeValuesResponse :: Newtype GetAttributeValuesResponse _
derive instance repGenericGetAttributeValuesResponse :: Generic GetAttributeValuesResponse _
instance showGetAttributeValuesResponse :: Show GetAttributeValuesResponse where show = genericShow
instance decodeGetAttributeValuesResponse :: Decode GetAttributeValuesResponse where decode = genericDecode options
instance encodeGetAttributeValuesResponse :: Encode GetAttributeValuesResponse where encode = genericEncode options

-- | Constructs GetAttributeValuesResponse from required parameters
newGetAttributeValuesResponse :: GetAttributeValuesResponse
newGetAttributeValuesResponse  = GetAttributeValuesResponse { "AttributeValues": Nothing, "NextToken": Nothing }

-- | Constructs GetAttributeValuesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAttributeValuesResponse' :: ( { "AttributeValues" :: Maybe (AttributeValueList) , "NextToken" :: Maybe (String) } -> {"AttributeValues" :: Maybe (AttributeValueList) , "NextToken" :: Maybe (String) } ) -> GetAttributeValuesResponse
newGetAttributeValuesResponse'  customize = (GetAttributeValuesResponse <<< customize) { "AttributeValues": Nothing, "NextToken": Nothing }



newtype GetProductsRequest = GetProductsRequest 
  { "ServiceCode" :: Maybe (String)
  , "Filters" :: Maybe (Filters)
  , "FormatVersion" :: Maybe (String)
  , "NextToken" :: Maybe (String)
  , "MaxResults" :: Maybe (BoxedInteger)
  }
derive instance newtypeGetProductsRequest :: Newtype GetProductsRequest _
derive instance repGenericGetProductsRequest :: Generic GetProductsRequest _
instance showGetProductsRequest :: Show GetProductsRequest where show = genericShow
instance decodeGetProductsRequest :: Decode GetProductsRequest where decode = genericDecode options
instance encodeGetProductsRequest :: Encode GetProductsRequest where encode = genericEncode options

-- | Constructs GetProductsRequest from required parameters
newGetProductsRequest :: GetProductsRequest
newGetProductsRequest  = GetProductsRequest { "Filters": Nothing, "FormatVersion": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "ServiceCode": Nothing }

-- | Constructs GetProductsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetProductsRequest' :: ( { "ServiceCode" :: Maybe (String) , "Filters" :: Maybe (Filters) , "FormatVersion" :: Maybe (String) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (BoxedInteger) } -> {"ServiceCode" :: Maybe (String) , "Filters" :: Maybe (Filters) , "FormatVersion" :: Maybe (String) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (BoxedInteger) } ) -> GetProductsRequest
newGetProductsRequest'  customize = (GetProductsRequest <<< customize) { "Filters": Nothing, "FormatVersion": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "ServiceCode": Nothing }



newtype GetProductsResponse = GetProductsResponse 
  { "FormatVersion" :: Maybe (String)
  , "PriceList" :: Maybe (PriceList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeGetProductsResponse :: Newtype GetProductsResponse _
derive instance repGenericGetProductsResponse :: Generic GetProductsResponse _
instance showGetProductsResponse :: Show GetProductsResponse where show = genericShow
instance decodeGetProductsResponse :: Decode GetProductsResponse where decode = genericDecode options
instance encodeGetProductsResponse :: Encode GetProductsResponse where encode = genericEncode options

-- | Constructs GetProductsResponse from required parameters
newGetProductsResponse :: GetProductsResponse
newGetProductsResponse  = GetProductsResponse { "FormatVersion": Nothing, "NextToken": Nothing, "PriceList": Nothing }

-- | Constructs GetProductsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetProductsResponse' :: ( { "FormatVersion" :: Maybe (String) , "PriceList" :: Maybe (PriceList) , "NextToken" :: Maybe (String) } -> {"FormatVersion" :: Maybe (String) , "PriceList" :: Maybe (PriceList) , "NextToken" :: Maybe (String) } ) -> GetProductsResponse
newGetProductsResponse'  customize = (GetProductsResponse <<< customize) { "FormatVersion": Nothing, "NextToken": Nothing, "PriceList": Nothing }



-- | <p>An error on the server occurred during the processing of your request. Try again later.</p>
newtype InternalErrorException = InternalErrorException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInternalErrorException :: Newtype InternalErrorException _
derive instance repGenericInternalErrorException :: Generic InternalErrorException _
instance showInternalErrorException :: Show InternalErrorException where show = genericShow
instance decodeInternalErrorException :: Decode InternalErrorException where decode = genericDecode options
instance encodeInternalErrorException :: Encode InternalErrorException where encode = genericEncode options

-- | Constructs InternalErrorException from required parameters
newInternalErrorException :: InternalErrorException
newInternalErrorException  = InternalErrorException { "Message": Nothing }

-- | Constructs InternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalErrorException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> InternalErrorException
newInternalErrorException'  customize = (InternalErrorException <<< customize) { "Message": Nothing }



-- | <p>The pagination token is invalid. Try again without a pagination token.</p>
newtype InvalidNextTokenException = InvalidNextTokenException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": Nothing }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": Nothing }



-- | <p>One or more parameters had an invalid value.</p>
newtype InvalidParameterException = InvalidParameterException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "Message": Nothing }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "Message": Nothing }



-- | <p>The requested resource can't be found.</p>
newtype NotFoundException = NotFoundException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "Message": Nothing }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "Message": Nothing }



newtype PriceList = PriceList (Array PriceListItemJSON)
derive instance newtypePriceList :: Newtype PriceList _
derive instance repGenericPriceList :: Generic PriceList _
instance showPriceList :: Show PriceList where show = genericShow
instance decodePriceList :: Decode PriceList where decode = genericDecode options
instance encodePriceList :: Encode PriceList where encode = genericEncode options



newtype PriceListItemJSON = PriceListItemJSON String
derive instance newtypePriceListItemJSON :: Newtype PriceListItemJSON _
derive instance repGenericPriceListItemJSON :: Generic PriceListItemJSON _
instance showPriceListItemJSON :: Show PriceListItemJSON where show = genericShow
instance decodePriceListItemJSON :: Decode PriceListItemJSON where decode = genericDecode options
instance encodePriceListItemJSON :: Encode PriceListItemJSON where encode = genericEncode options



-- | <p>The metadata for a service, such as the service code and available attribute names.</p>
newtype Service = Service 
  { "ServiceCode" :: Maybe (String)
  , "AttributeNames" :: Maybe (AttributeNameList)
  }
derive instance newtypeService :: Newtype Service _
derive instance repGenericService :: Generic Service _
instance showService :: Show Service where show = genericShow
instance decodeService :: Decode Service where decode = genericDecode options
instance encodeService :: Encode Service where encode = genericEncode options

-- | Constructs Service from required parameters
newService :: Service
newService  = Service { "AttributeNames": Nothing, "ServiceCode": Nothing }

-- | Constructs Service's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newService' :: ( { "ServiceCode" :: Maybe (String) , "AttributeNames" :: Maybe (AttributeNameList) } -> {"ServiceCode" :: Maybe (String) , "AttributeNames" :: Maybe (AttributeNameList) } ) -> Service
newService'  customize = (Service <<< customize) { "AttributeNames": Nothing, "ServiceCode": Nothing }



newtype ServiceList = ServiceList (Array Service)
derive instance newtypeServiceList :: Newtype ServiceList _
derive instance repGenericServiceList :: Generic ServiceList _
instance showServiceList :: Show ServiceList where show = genericShow
instance decodeServiceList :: Decode ServiceList where decode = genericDecode options
instance encodeServiceList :: Encode ServiceList where encode = genericEncode options



newtype ErrorMessage' = ErrorMessage' String
derive instance newtypeErrorMessage' :: Newtype ErrorMessage' _
derive instance repGenericErrorMessage' :: Generic ErrorMessage' _
instance showErrorMessage' :: Show ErrorMessage' where show = genericShow
instance decodeErrorMessage' :: Decode ErrorMessage' where decode = genericDecode options
instance encodeErrorMessage' :: Encode ErrorMessage' where encode = genericEncode options

