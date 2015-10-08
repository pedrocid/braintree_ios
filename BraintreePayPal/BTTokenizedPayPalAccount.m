#import "BTTokenizedPayPalAccount_Internal.h"

@interface BTTokenizedPayPalAccount ()
@property (nonatomic, readwrite, copy) NSString *email;
@property (nonatomic, readwrite, copy) NSString *firstName;
@property (nonatomic, readwrite, copy) NSString *lastName;
@property (nonatomic, readwrite, copy) NSString *phone;
@property (nonatomic, readwrite, strong) BTPostalAddress *billingAddress;
@property (nonatomic, readwrite, strong) BTPostalAddress *shippingAddress;
@property (nonatomic, readwrite, copy) NSString *clientMetadataId;
@property (nonatomic, readwrite, copy) NSString *payerId;
@end

@implementation BTTokenizedPayPalAccount

@synthesize paymentMethodNonce = _paymentMethodNonce;
@synthesize localizedDescription = _localizedDescription;
@synthesize type = _type;

- (instancetype)initWithPaymentMethodNonce:(NSString *)nonce
                               description:(NSString *)description
                                     email:(NSString *)email
                                 firstName:(NSString *)firstName
                                  lastName:(NSString *)lastName
                                     phone:(NSString *)phone
                            billingAddress:(BTPostalAddress *)billingAddress
                           shippingAddress:(BTPostalAddress *)shippingAddress
                          clientMetadataId:(NSString *)clientMetadataId
                                   payerId:(NSString *)payerId
{
    if (self = [super init]) {
        _paymentMethodNonce = nonce;
        _localizedDescription = description;
        _email = email;
        _firstName = firstName;
        _lastName = lastName;
        _phone = phone;
        _billingAddress = [billingAddress copy];
        _shippingAddress = [shippingAddress copy];
        _clientMetadataId = clientMetadataId;
        _payerId = payerId;
        _type = @"PayPal";
    }
    return self;
}

@end
