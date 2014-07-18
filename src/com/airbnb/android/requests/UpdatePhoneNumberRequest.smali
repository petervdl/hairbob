.class public Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "UpdatePhoneNumberRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROPS_PHONE_CODE:Ljava/lang/String; = "phone_number_verification_code"

.field private static final PROPS_PHONE_NUMBER:Ljava/lang/String; = "phone_number"


# direct methods
.method private constructor <init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "strap"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;>;"
    const-string/jumbo v0, "account/update"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 27
    return-void
.end method

.method public static addPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 15
    .local v0, "request":Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->createBasePropertiesAsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "phone_number"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;->setPostParamsAsStrap(Lcom/airbnb/android/utils/Strap;)V

    .line 16
    return-object v0
.end method

.method public static verifyPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "verificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 21
    .local v0, "request":Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->createBasePropertiesAsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "phone_number_verification_code"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;->setPostParamsAsStrap(Lcom/airbnb/android/utils/Strap;)V

    .line 22
    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
