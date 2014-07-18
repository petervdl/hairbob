.class public abstract Lcom/airbnb/android/requests/AlertsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "AlertsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/AlertsRequest$HostAlertsRequest;,
        Lcom/airbnb/android/requests/AlertsRequest$GuestAlertsRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/AlertsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private alertWrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "alerts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$AlertWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public alerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Alert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "strap"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AlertsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AlertsRequest;>;"
    const-string/jumbo v0, "account/alerts"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected preProcess()V
    .registers 5

    .prologue
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/requests/AlertsRequest;->alerts:Ljava/util/List;

    .line 23
    iget-object v3, p0, Lcom/airbnb/android/requests/AlertsRequest;->alertWrappers:Ljava/util/List;

    if-eqz v3, :cond_2b

    .line 24
    iget-object v3, p0, Lcom/airbnb/android/requests/AlertsRequest;->alertWrappers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/requests/Wrappers$AlertWrapper;

    .line 25
    .local v2, "wrapper":Lcom/airbnb/android/requests/Wrappers$AlertWrapper;
    iget-object v0, v2, Lcom/airbnb/android/requests/Wrappers$AlertWrapper;->alert:Lcom/airbnb/android/models/Alert;

    .line 26
    .local v0, "alert":Lcom/airbnb/android/models/Alert;
    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 27
    iget-object v3, p0, Lcom/airbnb/android/requests/AlertsRequest;->alerts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 31
    .end local v0    # "alert":Lcom/airbnb/android/models/Alert;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "wrapper":Lcom/airbnb/android/requests/Wrappers$AlertWrapper;
    :cond_2b
    return-void
.end method
