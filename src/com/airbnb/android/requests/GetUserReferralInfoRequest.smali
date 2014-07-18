.class public Lcom/airbnb/android/requests/GetUserReferralInfoRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetUserReferralInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/GetUserReferralInfoRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "code"
    .end annotation
.end field

.field public earnedReferrerCredit:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "earned_referrer_credit"
    .end annotation
.end field

.field public offerReferrerCreditGuest:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "offer_referrer_credit_guest"
    .end annotation
.end field

.field public offerReferrerCreditHost:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "offer_referrer_credit_host"
    .end annotation
.end field

.field public pendingReferrerCredit:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pending_referrer_credit"
    .end annotation
.end field

.field public referralUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "link"
    .end annotation
.end field

.field public referreeWrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "referrals"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$ReferreeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public referrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Referree;",
            ">;"
        }
    .end annotation
.end field

.field public smsMessage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sms_message"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GetUserReferralInfoRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetUserReferralInfoRequest;>;"
    const-string/jumbo v0, "referrals/referrer_status"

    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 48
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->referrees:Ljava/util/List;

    .line 39
    iget-object v2, p0, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->referreeWrappers:Ljava/util/List;

    if-eqz v2, :cond_25

    .line 40
    iget-object v2, p0, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->referreeWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$ReferreeWrapper;

    .line 41
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$ReferreeWrapper;
    iget-object v2, p0, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->referrees:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$ReferreeWrapper;->referral:Lcom/airbnb/android/models/Referree;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 44
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$ReferreeWrapper;
    :cond_25
    return-void
.end method
