.class public Lcom/airbnb/android/requests/PostAlertViewedRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "PostAlertViewedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/PostAlertViewedRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "alertId"    # I

    .prologue
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "alerts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 9
    invoke-static {}, Lcom/airbnb/android/requests/PostAlertViewedRequest;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/PostAlertViewedRequest;->setPostParams(Ljava/util/Properties;)V

    .line 10
    return-void
.end method

.method private static getProperties()Ljava/util/Properties;
    .registers 3

    .prologue
    .line 13
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 14
    .local v0, "props":Ljava/util/Properties;
    const-string/jumbo v1, "viewed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
