.class public Lcom/airbnb/android/requests/OAuthCallbackRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "OAuthCallbackRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/OAuthCallbackRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final SERVICE_GOOGLE:Ljava/lang/String; = "google"

.field public static final SERVICE_LINKEDIN:Ljava/lang/String; = "linked_in_v2"


# direct methods
.method private constructor <init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/OAuthCallbackRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/OAuthCallbackRequest;>;"
    const-string/jumbo v0, "mobile_oauth_callback"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 25
    return-void
.end method

.method public static oauthCallbackServerRequest(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/OAuthCallbackRequest;
    .registers 7
    .param p0, "authorizationCode"    # Ljava/lang/String;
    .param p1, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/OAuthCallbackRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/OAuthCallbackRequest;"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/OAuthCallbackRequest;>;"
    new-instance v1, Lcom/airbnb/android/requests/OAuthCallbackRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/airbnb/android/requests/OAuthCallbackRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 18
    .local v1, "request":Lcom/airbnb/android/requests/OAuthCallbackRequest;
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->createBasePropertiesAsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "authorization_code"

    invoke-virtual {v2, v3, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 19
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/requests/OAuthCallbackRequest;->setPostParamsAsStrap(Lcom/airbnb/android/utils/Strap;)V

    .line 20
    return-object v1
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
