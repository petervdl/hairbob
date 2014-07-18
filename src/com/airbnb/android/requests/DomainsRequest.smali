.class public Lcom/airbnb/android/requests/DomainsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "DomainsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/DomainsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mDomainStore:Lcom/airbnb/android/persist/DomainStore;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;Lcom/airbnb/android/persist/DomainStore;)V
    .registers 4
    .param p2, "domainStore"    # Lcom/airbnb/android/persist/DomainStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/DomainsRequest;",
            ">;",
            "Lcom/airbnb/android/persist/DomainStore;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/DomainsRequest;>;"
    const-string/jumbo v0, "domains"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/requests/DomainsRequest;->mDomainStore:Lcom/airbnb/android/persist/DomainStore;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;Z)V
    .registers 4
    .param p2, "persistResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/DomainsRequest;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/DomainsRequest;>;"
    if-eqz p2, :cond_a

    invoke-static {}, Lcom/airbnb/android/persist/DomainStore;->getInstance()Lcom/airbnb/android/persist/DomainStore;

    move-result-object v0

    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/requests/DomainsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;Lcom/airbnb/android/persist/DomainStore;)V

    .line 16
    return-void

    .line 15
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "persistResult"    # Z

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/requests/DomainsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;Z)V

    .line 12
    return-void
.end method


# virtual methods
.method public getReturnStrategy()Lcom/android/volley/Request$ReturnStrategy;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    return-object v0
.end method

.method public getTTL()J
    .registers 3

    .prologue
    .line 34
    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method protected onStringParsed(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/requests/DomainsRequest;->mDomainStore:Lcom/airbnb/android/persist/DomainStore;

    if-eqz v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/airbnb/android/requests/DomainsRequest;->mDomainStore:Lcom/airbnb/android/persist/DomainStore;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/persist/DomainStore;->setData(Ljava/lang/String;)V

    .line 30
    :cond_9
    return-void
.end method
