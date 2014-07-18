.class Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemWrapper;
.super Ljava/lang/Object;
.source "FriendsWishlistsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/FriendsWishlistsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeedItemWrapper"
.end annotation


# instance fields
.field feedItem:Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItemHelper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "feed_item"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
