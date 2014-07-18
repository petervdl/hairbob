.class public Lcom/airbnb/android/requests/GetActiveAccountRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetActiveAccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/GetActiveAccountRequest$AnalyticsProperties;,
        Lcom/airbnb/android/requests/GetActiveAccountRequest$UserWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/GetActiveAccountRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALERT_KEY:Ljava/lang/String; = "alert_types[]"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private analyticsProperties:Lcom/airbnb/android/requests/GetActiveAccountRequest$AnalyticsProperties;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "analytics_properties"
    .end annotation
.end field

.field private badges:Lcom/airbnb/android/models/BadgeCount;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "badge_counts"
    .end annotation
.end field

.field currency:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency"
    .end annotation
.end field

.field private mAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access_token"
    .end annotation
.end field

.field private mRestartTask:Z

.field private photoExperiment:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_experiment"
    .end annotation
.end field

.field private starredListingIds:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "starred_listing_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public tosRequired:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tos_agreement_required"
    .end annotation
.end field

.field public user:Lcom/airbnb/android/models/User;

.field private userWrapper:Lcom/airbnb/android/requests/GetActiveAccountRequest$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GetActiveAccountRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetActiveAccountRequest;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;ZLcom/airbnb/android/requests/RequestListener;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "restartTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GetActiveAccountRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetActiveAccountRequest;>;"
    const-string/jumbo v0, "account/active"

    invoke-static {}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->getAllowedAlertTypes()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/requests/RequestListener;)V

    .line 50
    iput-boolean p2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->mRestartTask:Z

    .line 51
    return-void
.end method

.method public static final getAllowedAlertTypes()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/airbnb/android/models/Alert$AlertType;->values()[Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v0

    .local v0, "arr$":[Lcom/airbnb/android/models/Alert$AlertType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_1f

    aget-object v4, v0, v1

    .line 35
    .local v4, "type":Lcom/airbnb/android/models/Alert$AlertType;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "alert_types[]"

    iget-object v7, v4, Lcom/airbnb/android/models/Alert$AlertType;->mType:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 38
    .end local v4    # "type":Lcom/airbnb/android/models/Alert$AlertType;
    :cond_1f
    return-object v3
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 92
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 93
    .local v0, "networkResponse":Lcom/android/volley/NetworkResponse;
    if-eqz v0, :cond_17

    .line 94
    iget v1, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v2, 0x193

    if-eq v1, v2, :cond_10

    iget v1, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_17

    .line 95
    :cond_10
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->invalidateSession()V

    .line 99
    :cond_17
    invoke-super {p0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 100
    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public isInPhotoExperiment()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->photoExperiment:Z

    return v0
.end method

.method public isPermaCache()Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected preProcess()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    .line 73
    .local v0, "api":Lcom/airbnb/android/AirbnbApi;
    iget-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->mAccessToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 74
    iget-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/AirbnbApi;->setAccessToken(Ljava/lang/String;)V

    .line 77
    :cond_11
    iget-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->userWrapper:Lcom/airbnb/android/requests/GetActiveAccountRequest$UserWrapper;

    iget-object v2, v2, Lcom/airbnb/android/requests/GetActiveAccountRequest$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->user:Lcom/airbnb/android/models/User;

    .line 78
    iget-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->user:Lcom/airbnb/android/models/User;

    iget-object v3, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->starredListingIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/User;->setFavoriteListings(Ljava/util/List;)V

    .line 79
    iget-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->user:Lcom/airbnb/android/models/User;

    iget-boolean v3, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->photoExperiment:Z

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/User;->setInPhotoExperiment(Z)V

    .line 80
    iget-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->user:Lcom/airbnb/android/models/User;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/AirbnbApi;->setCurrentUser(Lcom/airbnb/android/models/User;Z)V

    .line 81
    iget-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->badges:Lcom/airbnb/android/models/BadgeCount;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/AirbnbApi;->setBadges(Lcom/airbnb/android/models/BadgeCount;)V

    .line 83
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v1

    .line 84
    .local v1, "ch":Lcom/airbnb/android/utils/CurrencyHelper;
    iget-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->currency:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {p0}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->hasHadResponseDelivered()Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {v1}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 85
    iget-object v2, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->currency:Ljava/lang/String;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/airbnb/android/requests/GetActiveAccountRequest;->mRestartTask:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/CurrencyHelper;->setCurrency(Ljava/lang/String;ZZ)V

    .line 88
    :cond_5a
    return-void
.end method
