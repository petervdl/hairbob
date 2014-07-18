.class public Lcom/airbnb/android/requests/AlertsRequest$GuestAlertsRequest;
.super Lcom/airbnb/android/requests/AlertsRequest;
.source "AlertsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/AlertsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuestAlertsRequest"
.end annotation


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AlertsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AlertsRequest;>;"
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "alert_types[]"

    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->LeaveReviews:Lcom/airbnb/android/models/Alert$AlertType;

    iget-object v2, v2, Lcom/airbnb/android/models/Alert$AlertType;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "role"

    const-string/jumbo v2, "guest"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/requests/AlertsRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 39
    return-void
.end method
