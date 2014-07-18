.class public Lcom/airbnb/android/requests/groups/DeleteReplyRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "DeleteReplyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/DeleteReplyRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Reply;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "reply"    # Lcom/airbnb/android/models/groups/Reply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Reply;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/DeleteReplyRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/DeleteReplyRequest;>;"
    const-string/jumbo v0, "groups/content/reply-%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Reply;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getHeaders()Lcom/airbnb/android/utils/Strap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0}, Lcom/airbnb/android/requests/AirbnbRequest;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "X-HTTP-Method-Override"

    const-string/jumbo v2, "DELETE"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/airbnb/android/requests/groups/DeleteReplyRequest;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method
