.class Lcom/airbnb/android/adapters/DiscoverAdapter$10;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->loadMoreListings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/PopularRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;)V
    .registers 2

    .prologue
    .line 438
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$10;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 453
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 454
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/PopularRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/PopularRequest;

    .prologue
    .line 442
    iget-object v0, p1, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_10

    .line 443
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$10;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->setRemainingData(Z)V

    .line 445
    :cond_10
    iget-object v0, p1, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 446
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$10;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iget-object v1, p1, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->addDiscoverData(Ljava/util/List;)V

    .line 448
    :cond_1f
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$10;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iget-object v1, p1, Lcom/airbnb/android/requests/PopularRequest;->serverOffsetParams:Lcom/airbnb/android/utils/Strap;

    # setter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mServerOffsetParams:Lcom/airbnb/android/utils/Strap;
    invoke-static {v0, v1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$202(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 449
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 438
    check-cast p1, Lcom/airbnb/android/requests/PopularRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter$10;->onResponse(Lcom/airbnb/android/requests/PopularRequest;)V

    return-void
.end method
