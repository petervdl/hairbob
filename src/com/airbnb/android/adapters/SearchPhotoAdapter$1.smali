.class Lcom/airbnb/android/adapters/SearchPhotoAdapter$1;
.super Ljava/lang/Object;
.source "SearchPhotoAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/SearchPhotoAdapter;->loadMoreListings()V
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
        "Lcom/airbnb/android/requests/SearchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/SearchPhotoAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/SearchPhotoAdapter;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter$1;->this$0:Lcom/airbnb/android/adapters/SearchPhotoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 68
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    const v1, 0x7f0e06bc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/SearchRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/SearchRequest;

    .prologue
    .line 51
    iget-object v1, p1, Lcom/airbnb/android/requests/SearchRequest;->listings:Ljava/util/List;

    .line 52
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x19

    if-ge v2, v3, :cond_10

    .line 53
    iget-object v2, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter$1;->this$0:Lcom/airbnb/android/adapters/SearchPhotoAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->setRemainingData(Z)V

    .line 55
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 56
    iget-object v2, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter$1;->this$0:Lcom/airbnb/android/adapters/SearchPhotoAdapter;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->addData(Ljava/util/List;)V

    .line 58
    :cond_1b
    iget-object v2, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter$1;->this$0:Lcom/airbnb/android/adapters/SearchPhotoAdapter;

    const/4 v3, 0x0

    # setter for: Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;
    invoke-static {v2, v3}, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->access$002(Lcom/airbnb/android/adapters/SearchPhotoAdapter;Lcom/airbnb/android/requests/SearchRequest;)Lcom/airbnb/android/requests/SearchRequest;

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, ".intent.action.LOADED_SEARCH_RESULTS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 64
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/airbnb/android/requests/SearchRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SearchPhotoAdapter$1;->onResponse(Lcom/airbnb/android/requests/SearchRequest;)V

    return-void
.end method
