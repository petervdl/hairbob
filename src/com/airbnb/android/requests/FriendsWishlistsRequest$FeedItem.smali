.class public Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;
.super Ljava/lang/Object;
.source "FriendsWishlistsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/FriendsWishlistsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedItem"
.end annotation


# instance fields
.field public collection:Lcom/airbnb/android/models/Collection;

.field public listing:Lcom/airbnb/android/models/Listing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation
.end field

.field public mCollectionWrapper:Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "collection"
    .end annotation
.end field

.field public mUserWrapper:Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field

.field public nextHash:Ljava/lang/String;

.field public user:Lcom/airbnb/android/models/User;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
