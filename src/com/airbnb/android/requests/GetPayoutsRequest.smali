.class public Lcom/airbnb/android/requests/GetPayoutsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetPayoutsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/GetPayoutsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public payoutOptions:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "payout_infos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PayoutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GetPayoutsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetPayoutsRequest;>;"
    const-string/jumbo v0, "payout_infos"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 20
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method
