.class Lcom/airbnb/android/requests/GetActiveAccountRequest$AnalyticsProperties;
.super Ljava/lang/Object;
.source "GetActiveAccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/GetActiveAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnalyticsProperties"
.end annotation


# instance fields
.field addedToWishlist:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "added_to_wishlist"
    .end annotation
.end field

.field affiliateId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "affiliate_id"
    .end annotation
.end field

.field bornDevice:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "born_device"
    .end annotation
.end field

.field bornUser:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "born_user"
    .end annotation
.end field

.field city:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "city"
    .end annotation
.end field

.field facebookConnected:Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "facebook_connected"
    .end annotation
.end field

.field haveHosted:Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "have_hosted"
    .end annotation
.end field

.field haveReviewed:Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "have_reviewed"
    .end annotation
.end field

.field haveTraveled:Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "have_traveled"
    .end annotation
.end field

.field isActivehost:Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_active_host"
    .end annotation
.end field

.field market:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "market"
    .end annotation
.end field

.field numAcceptedResos:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "num_accepted_resos"
    .end annotation
.end field

.field numberActiveListings:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "number_of_active_listings"
    .end annotation
.end field

.field numberOfListings:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "number_of_listings"
    .end annotation
.end field

.field receivedInquiry:Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "received_inquiry"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
