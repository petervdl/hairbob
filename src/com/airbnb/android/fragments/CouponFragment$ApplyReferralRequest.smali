.class Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CouponFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/CouponFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplyReferralRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "first_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "referralCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "referrals/apply_code/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;->getParams(Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method private static getParams(Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 3
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method
