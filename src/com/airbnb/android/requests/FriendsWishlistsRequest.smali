.class public Lcom/airbnb/android/requests/FriendsWishlistsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "FriendsWishlistsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;,
        Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemHelper;,
        Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/FriendsWishlistsRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final FRIENDS_1UP_SAVES:Ljava/lang/String; = "friends_1up_saves"

.field private static final ITEMS_PER_PAGE:Ljava/lang/String; = "items_per_page"

.field public static final NUM_ITEMS_PER_PAGE:I = 0x14

.field private static final OFFSET:Ljava/lang/String; = "offset"


# instance fields
.field private feedItemWrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "feed_items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public feedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "offset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/FriendsWishlistsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/FriendsWishlistsRequest;>;"
    const-string/jumbo v0, "activity/wishlists_friends_mobile"

    invoke-static {p1}, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->getProperties(Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 27
    return-void
.end method

.method private static getProperties(Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 5
    .param p0, "offset"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "items_per_page"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 32
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 33
    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 36
    :cond_1e
    return-object v0
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 41
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method protected preProcess()V
    .registers 8

    .prologue
    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->feedItems:Ljava/util/List;

    .line 52
    iget-object v5, p0, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->feedItemWrappers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemWrapper;

    .line 53
    .local v4, "wrapper":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemWrapper;
    iget-object v0, v4, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemWrapper;->feedItem:Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemHelper;

    .line 54
    .local v0, "feedItem":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemHelper;
    const-string/jumbo v5, "friends_1up_saves"

    iget-object v6, v0, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemHelper;->subtype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 55
    iget-object v5, v0, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemHelper;->saves:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;

    .line 56
    .local v3, "item":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;
    iget-object v5, v3, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->listing:Lcom/airbnb/android/models/Listing;

    if-eqz v5, :cond_2c

    .line 57
    iget-object v5, v3, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v5

    iput-object v5, v3, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->listing:Lcom/airbnb/android/models/Listing;

    .line 58
    iget-object v5, v3, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->mCollectionWrapper:Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;

    iget-object v5, v5, Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;->collection:Lcom/airbnb/android/models/Collection;

    iput-object v5, v3, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->collection:Lcom/airbnb/android/models/Collection;

    .line 59
    iget-object v5, v0, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemHelper;->nextHash:Ljava/lang/String;

    iput-object v5, v3, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->nextHash:Ljava/lang/String;

    .line 60
    iget-object v5, v3, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->mUserWrapper:Lcom/airbnb/android/requests/Wrappers$UserWrapper;

    iget-object v5, v5, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v5, v3, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->user:Lcom/airbnb/android/models/User;

    .line 62
    iget-object v5, p0, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->feedItems:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 67
    .end local v0    # "feedItem":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemHelper;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;
    .end local v4    # "wrapper":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemWrapper;
    :cond_5a
    return-void
.end method
