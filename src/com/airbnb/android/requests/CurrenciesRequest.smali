.class public Lcom/airbnb/android/requests/CurrenciesRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CurrenciesRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/CurrenciesRequest$Currencies;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/CurrenciesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public currencyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Currency;",
            ">;"
        }
    .end annotation
.end field

.field public items:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currencies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/CurrenciesRequest$Currencies;",
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
            "Lcom/airbnb/android/requests/CurrenciesRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CurrenciesRequest;>;"
    const-string/jumbo v0, "currencies"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getReturnStrategy()Lcom/android/volley/Request$ReturnStrategy;
    .registers 2

    .prologue
    .line 21
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    return-object v0
.end method

.method public getTTL()J
    .registers 3

    .prologue
    .line 34
    const-wide v0, 0x9cbea964L

    return-wide v0
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/CurrenciesRequest;->currencyList:Ljava/util/List;

    .line 27
    iget-object v2, p0, Lcom/airbnb/android/requests/CurrenciesRequest;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/CurrenciesRequest$Currencies;

    .line 28
    .local v1, "item":Lcom/airbnb/android/requests/CurrenciesRequest$Currencies;
    iget-object v2, p0, Lcom/airbnb/android/requests/CurrenciesRequest;->currencyList:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/CurrenciesRequest$Currencies;->item:Lcom/airbnb/android/models/Currency;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 30
    .end local v1    # "item":Lcom/airbnb/android/requests/CurrenciesRequest$Currencies;
    :cond_21
    return-void
.end method
