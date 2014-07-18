.class public Lcom/airbnb/android/requests/GetSecurityCheckRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "GetSecurityCheckRequest.java"


# instance fields
.field public securityCheck:Lcom/airbnb/android/models/SecurityCheck;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "security_check"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GetSecurityCheckRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetSecurityCheckRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "security_checks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 11
    return-void
.end method
