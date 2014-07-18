.class public Lcom/airbnb/android/requests/groups/DeleteContentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "DeleteContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/DeleteContentRequest;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/DeleteContentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/DeleteContentRequest;>;"
    invoke-static {p1}, Lcom/airbnb/android/requests/groups/DeleteContentRequest;->getPath(Lcom/airbnb/android/models/groups/BaseContent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 17
    return-void
.end method

.method public static deleteRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/DeleteContentRequest;
    .registers 3
    .param p0, "mContent"    # Lcom/airbnb/android/models/groups/BaseContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/DeleteContentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/DeleteContentRequest;"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/DeleteContentRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/groups/DeleteContentRequest;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/requests/groups/DeleteContentRequest;-><init>(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method private static getPath(Lcom/airbnb/android/models/groups/BaseContent;)Ljava/lang/String;
    .registers 3
    .param p0, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 20
    new-instance v0, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;

    invoke-direct {v0}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;-><init>()V

    .line 21
    .local v0, "visitor":Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 22
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;->getRootPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 33
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
    invoke-virtual {p0}, Lcom/airbnb/android/requests/groups/DeleteContentRequest;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
