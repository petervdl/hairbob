.class public Lcom/airbnb/android/requests/AirbnbRequestV2;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "AirbnbRequestV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/android/requests/AirbnbRequestV2;",
        ">",
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static API_VERSION_V2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string/jumbo v0, "v2/"

    sput-object v0, Lcom/airbnb/android/requests/AirbnbRequestV2;->API_VERSION_V2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "props"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestV2;, "Lcom/airbnb/android/requests/AirbnbRequestV2<TT;>;"
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<TT;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/requests/AirbnbRequestV2;->API_VERSION_V2:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/airbnb/android/AirbnbApi;->buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 19
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
    .line 24
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestV2;, "Lcom/airbnb/android/requests/AirbnbRequestV2<TT;>;"
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/airbnb/android/requests/AirbnbRequestV2;->getMethod()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 25
    invoke-super {p0}, Lcom/airbnb/android/requests/AirbnbRequest;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "X-HTTP-Method-Override"

    const-string/jumbo v2, "PATCH"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 27
    :goto_15
    return-object v0

    :cond_16
    invoke-super {p0}, Lcom/airbnb/android/requests/AirbnbRequest;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    goto :goto_15
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestV2;, "Lcom/airbnb/android/requests/AirbnbRequestV2<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/requests/AirbnbRequestV2;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method
