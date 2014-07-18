.class public Lcom/airbnb/android/requests/AirLocationRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "AirLocationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequestV2",
        "<",
        "Lcom/airbnb/android/requests/AirLocationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mAirLocationStore:Lcom/airbnb/android/persist/PrefsStore;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;ZLcom/airbnb/android/persist/PrefsStore;)V
    .registers 8
    .param p2, "lastMinute"    # Z
    .param p3, "airLocationStore"    # Lcom/airbnb/android/persist/PrefsStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AirLocationRequest;",
            ">;Z",
            "Lcom/airbnb/android/persist/PrefsStore;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AirLocationRequest;>;"
    const-string/jumbo v1, "locations"

    if-eqz p2, :cond_17

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v2, "last_minute"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    :goto_11
    invoke-direct {p0, v1, v0, p1}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 18
    iput-object p3, p0, Lcom/airbnb/android/requests/AirLocationRequest;->mAirLocationStore:Lcom/airbnb/android/persist/PrefsStore;

    .line 19
    return-void

    .line 17
    :cond_17
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static forLastMinute()Lcom/airbnb/android/requests/AirLocationRequest;
    .registers 4

    .prologue
    .line 13
    new-instance v0, Lcom/airbnb/android/requests/AirLocationRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getInstance()Lcom/airbnb/android/persist/LmbAirLocationStore;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/AirLocationRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;ZLcom/airbnb/android/persist/PrefsStore;)V

    return-object v0
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 31
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method protected onStringParsed(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/requests/AirLocationRequest;->mAirLocationStore:Lcom/airbnb/android/persist/PrefsStore;

    if-eqz v0, :cond_9

    .line 24
    iget-object v0, p0, Lcom/airbnb/android/requests/AirLocationRequest;->mAirLocationStore:Lcom/airbnb/android/persist/PrefsStore;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/persist/PrefsStore;->setData(Ljava/lang/String;)V

    .line 26
    :cond_9
    return-void
.end method
