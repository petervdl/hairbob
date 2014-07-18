.class public Lcom/airbnb/android/requests/CancellationPoliciesRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CancellationPoliciesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/CancellationPoliciesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cancellation_policies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/CancellationPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/CancellationPoliciesRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CancellationPoliciesRequest;>;"
    const-string/jumbo v0, "static/cancellation_policies"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getReturnStrategy()Lcom/android/volley/Request$ReturnStrategy;
    .registers 2

    .prologue
    .line 18
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    return-object v0
.end method

.method public getTTL()J
    .registers 3

    .prologue
    .line 23
    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method
