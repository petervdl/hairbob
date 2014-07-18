.class public Lcom/airbnb/android/requests/DeauthorizeServiceRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "DeauthorizeServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/DeauthorizeServiceRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENDPOINT_DEAUTHORIZE:Ljava/lang/String; = "deauthorize"


# instance fields
.field private mStatus:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/DeauthorizeServiceRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/DeauthorizeServiceRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 27
    return-void
.end method

.method public static disconnectGoogle(Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/DeauthorizeServiceRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/DeauthorizeServiceRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/DeauthorizeServiceRequest;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/DeauthorizeServiceRequest;>;"
    new-instance v1, Lcom/airbnb/android/requests/DeauthorizeServiceRequest;

    const-string/jumbo v2, "deauthorize"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/airbnb/android/requests/DeauthorizeServiceRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    .local v1, "request":Lcom/airbnb/android/requests/DeauthorizeServiceRequest;
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->createBasePropertiesAsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "service"

    const-string/jumbo v4, "google"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 21
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/requests/DeauthorizeServiceRequest;->setPostParamsAsStrap(Lcom/airbnb/android/utils/Strap;)V

    .line 22
    return-object v1
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .registers 3

    .prologue
    .line 39
    const-string/jumbo v0, "success"

    iget-object v1, p0, Lcom/airbnb/android/requests/DeauthorizeServiceRequest;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
