.class Lcom/airbnb/android/services/AirDreamService$1;
.super Ljava/lang/Object;
.source "AirDreamService.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/AirDreamService;->onDreamingStarted()V
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
.field final synthetic this$0:Lcom/airbnb/android/services/AirDreamService;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/AirDreamService;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    const v1, 0x7f0e0761

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    invoke-virtual {v0}, Lcom/airbnb/android/services/AirDreamService;->finish()V

    .line 67
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/PopularRequest;)V
    .registers 10
    .param p1, "response"    # Lcom/airbnb/android/requests/PopularRequest;

    .prologue
    .line 71
    iget-object v5, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/airbnb/android/services/AirDreamService;->access$002(Lcom/airbnb/android/services/AirDreamService;Ljava/util/List;)Ljava/util/List;

    .line 73
    iget-object v5, p1, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/interfaces/FeedItem;

    .line 74
    .local v3, "item":Lcom/airbnb/android/interfaces/FeedItem;
    instance-of v5, v3, Lcom/airbnb/android/models/ListingFeedItem;

    if-eqz v5, :cond_34

    .line 75
    check-cast v3, Lcom/airbnb/android/models/ListingFeedItem;

    .end local v3    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    invoke-virtual {v3}, Lcom/airbnb/android/models/ListingFeedItem;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    .line 76
    .local v4, "listing":Lcom/airbnb/android/models/Listing;
    iget-object v5, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    # getter for: Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;
    invoke-static {v5}, Lcom/airbnb/android/services/AirDreamService;->access$000(Lcom/airbnb/android/services/AirDreamService;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getPictureUrls()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    .line 77
    .end local v4    # "listing":Lcom/airbnb/android/models/Listing;
    .restart local v3    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    :cond_34
    instance-of v5, v3, Lcom/airbnb/android/models/CollectionFeedItem;

    if-eqz v5, :cond_10

    .line 78
    check-cast v3, Lcom/airbnb/android/models/CollectionFeedItem;

    .end local v3    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    invoke-virtual {v3}, Lcom/airbnb/android/models/CollectionFeedItem;->getCollection()Lcom/airbnb/android/models/Collection;

    move-result-object v0

    .line 79
    .local v0, "collection":Lcom/airbnb/android/models/Collection;
    invoke-virtual {v0}, Lcom/airbnb/android/models/Collection;->getListings()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Listing;

    .line 80
    .restart local v4    # "listing":Lcom/airbnb/android/models/Listing;
    iget-object v5, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    # getter for: Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;
    invoke-static {v5}, Lcom/airbnb/android/services/AirDreamService;->access$000(Lcom/airbnb/android/services/AirDreamService;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getPictureUrls()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_46

    .line 82
    .end local v4    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_60
    iget-object v5, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    # getter for: Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;
    invoke-static {v5}, Lcom/airbnb/android/services/AirDreamService;->access$000(Lcom/airbnb/android/services/AirDreamService;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/airbnb/android/models/Collection;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 86
    .end local v0    # "collection":Lcom/airbnb/android/models/Collection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6e
    iget-object v5, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    # getter for: Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;
    invoke-static {v5}, Lcom/airbnb/android/services/AirDreamService;->access$000(Lcom/airbnb/android/services/AirDreamService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7f

    .line 87
    iget-object v5, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    invoke-virtual {v5}, Lcom/airbnb/android/services/AirDreamService;->finish()V

    .line 89
    :cond_7f
    iget-object v5, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    iget-object v7, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    # getter for: Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;
    invoke-static {v7}, Lcom/airbnb/android/services/AirDreamService;->access$000(Lcom/airbnb/android/services/AirDreamService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    # setter for: Lcom/airbnb/android/services/AirDreamService;->mIndex:I
    invoke-static {v5, v6}, Lcom/airbnb/android/services/AirDreamService;->access$102(Lcom/airbnb/android/services/AirDreamService;I)I

    .line 90
    iget-object v5, p0, Lcom/airbnb/android/services/AirDreamService$1;->this$0:Lcom/airbnb/android/services/AirDreamService;

    # invokes: Lcom/airbnb/android/services/AirDreamService;->setupDisplay()V
    invoke-static {v5}, Lcom/airbnb/android/services/AirDreamService;->access$200(Lcom/airbnb/android/services/AirDreamService;)V

    .line 91
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lcom/airbnb/android/requests/PopularRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/services/AirDreamService$1;->onResponse(Lcom/airbnb/android/requests/PopularRequest;)V

    return-void
.end method
