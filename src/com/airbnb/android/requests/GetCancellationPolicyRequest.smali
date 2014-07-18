.class public Lcom/airbnb/android/requests/GetCancellationPolicyRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetCancellationPolicyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/GetCancellationPolicyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public cancellationPolicy:Lcom/airbnb/android/models/CancellationPolicy;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cancellation_policy"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GetCancellationPolicyRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetCancellationPolicyRequest;>;"
    const-string/jumbo v0, "cancellation_policies/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getReturnStrategy()Lcom/android/volley/Request$ReturnStrategy;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    return-object v0
.end method

.method public getTTL()J
    .registers 3

    .prologue
    .line 17
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method
