.class public Lcom/airbnb/android/requests/UnreadBadgesRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "UnreadBadgesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/UnreadBadgesRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALERT_KEY:Ljava/lang/String; = "alert_types[]"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field public badges:Lcom/airbnb/android/models/BadgeCount;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "badge_counts"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/requests/UnreadBadgesRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/requests/UnreadBadgesRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/requests/UnreadBadgesRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UnreadBadgesRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UnreadBadgesRequest;>;"
    const-string/jumbo v0, "account/unread"

    invoke-static {}, Lcom/airbnb/android/requests/UnreadBadgesRequest;->getAllowedAlertTypes()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/requests/RequestListener;)V

    .line 33
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
    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
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

    .line 25
    .local v4, "type":Lcom/airbnb/android/models/Alert$AlertType;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "alert_types[]"

    iget-object v7, v4, Lcom/airbnb/android/models/Alert$AlertType;->mType:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 28
    .end local v4    # "type":Lcom/airbnb/android/models/Alert$AlertType;
    :cond_1f
    return-object v3
.end method


# virtual methods
.method public getPriority()Lcom/android/volley/Request$Priority;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected preProcess()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/requests/UnreadBadgesRequest;->badges:Lcom/airbnb/android/models/BadgeCount;

    if-eqz v0, :cond_d

    .line 47
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/requests/UnreadBadgesRequest;->badges:Lcom/airbnb/android/models/BadgeCount;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->setBadges(Lcom/airbnb/android/models/BadgeCount;)V

    .line 49
    :cond_d
    return-void
.end method
