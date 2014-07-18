.class public Lcom/airbnb/android/requests/AuthorizeServiceRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "AuthorizeServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/AuthorizeServiceRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACEBOOK_ASSERTION:Ljava/lang/String; = "https://graph.facebook.com/me"

.field private static final GOOGLE_OAUTH_ASSERTION:Ljava/lang/String; = "https://www.googleapis.com/oauth2/v1/userinfo"

.field private static final GOOGLE_PLUS_ASSERTION:Ljava/lang/String; = "https://accounts.google.com/o/oauth2"


# instance fields
.field private mAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access_token"
    .end annotation
.end field

.field private mParams:Lcom/airbnb/android/utils/Strap;

.field private wrapper:Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "strap"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AuthorizeServiceRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AuthorizeServiceRequest;>;"
    const-string/jumbo v1, "authorize"

    const/4 v0, 0x0

    check-cast v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {p0, v1, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 42
    iput-object p1, p0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->mParams:Lcom/airbnb/android/utils/Strap;

    .line 43
    return-void
.end method

.method private static destroyAuthTokenIfLogin(Z)V
    .registers 3
    .param p0, "isLogin"    # Z

    .prologue
    .line 51
    if-eqz p0, :cond_a

    .line 52
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->setAccessToken(Ljava/lang/String;)V

    .line 54
    :cond_a
    return-void
.end method

.method public static forEmail(ZLjava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AuthorizeServiceRequest;
    .registers 6
    .param p0, "isLogin"    # Z
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AuthorizeServiceRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/AuthorizeServiceRequest;"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AuthorizeServiceRequest;>;"
    invoke-static {p0}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->destroyAuthTokenIfLogin(Z)V

    .line 37
    new-instance v0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    invoke-static {p1, p2}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->getEmailParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static forFacebook(ZLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AuthorizeServiceRequest;
    .registers 5
    .param p0, "isLogin"    # Z
    .param p1, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AuthorizeServiceRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/AuthorizeServiceRequest;"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AuthorizeServiceRequest;>;"
    invoke-static {p0}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->destroyAuthTokenIfLogin(Z)V

    .line 32
    new-instance v0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    invoke-static {p1}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->getFacebookQueryParams(Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static forGoogleOAuth(ZLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AuthorizeServiceRequest;
    .registers 5
    .param p0, "isLogin"    # Z
    .param p1, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AuthorizeServiceRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/AuthorizeServiceRequest;"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AuthorizeServiceRequest;>;"
    invoke-static {p0}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->destroyAuthTokenIfLogin(Z)V

    .line 22
    new-instance v0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    invoke-static {p1}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->getGoogleOAuthQueryParams(Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static forGooglePlus(ZLjava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AuthorizeServiceRequest;
    .registers 6
    .param p0, "isLogin"    # Z
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AuthorizeServiceRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/AuthorizeServiceRequest;"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AuthorizeServiceRequest;>;"
    invoke-static {p0}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->destroyAuthTokenIfLogin(Z)V

    .line 27
    new-instance v0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    invoke-static {p1, p2}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->getGooglePlusQueryParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method private static getEmailParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 5
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v1, "grant_type"

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method private static getFacebookQueryParams(Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 4
    .param p0, "facebookToken"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v1, "assertion"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "assertion_type"

    const-string/jumbo v2, "https://graph.facebook.com/me"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method private static getGoogleOAuthQueryParams(Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 4
    .param p0, "googleToken"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v1, "assertion"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "assertion_type"

    const-string/jumbo v2, "https://www.googleapis.com/oauth2/v1/userinfo"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method private static getGooglePlusQueryParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 5
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v1, "assertion"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "assertion_type"

    const-string/jumbo v2, "https://accounts.google.com/o/oauth2"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "refresh_token"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->mParams:Lcom/airbnb/android/utils/Strap;

    return-object v0
.end method

.method protected preProcess()V
    .registers 4

    .prologue
    .line 67
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    .line 70
    .local v0, "api":Lcom/airbnb/android/AirbnbApi;
    iget-object v1, p0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->wrapper:Lcom/airbnb/android/requests/Wrappers$UserWrapper;

    if-eqz v1, :cond_10

    .line 71
    iget-object v1, p0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->wrapper:Lcom/airbnb/android/requests/Wrappers$UserWrapper;

    iget-object v1, v1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/AirbnbApi;->setCurrentUser(Lcom/airbnb/android/models/User;Z)V

    .line 75
    :cond_10
    iget-object v1, p0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->mAccessToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 76
    iget-object v1, p0, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->setAccessToken(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->enablePushNotifications()V

    .line 79
    :cond_20
    return-void
.end method
