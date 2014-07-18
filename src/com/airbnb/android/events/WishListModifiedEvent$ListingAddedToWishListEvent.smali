.class public Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;
.super Lcom/airbnb/android/events/WishListModifiedEvent;
.source "WishListModifiedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/events/WishListModifiedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingAddedToWishListEvent"
.end annotation


# instance fields
.field public listing:Lcom/airbnb/android/models/Listing;

.field public trackingPosition:Ljava/lang/String;

.field public wishList:Lcom/airbnb/android/models/Collection;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Collection;Ljava/lang/String;)V
    .registers 4
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "wishList"    # Lcom/airbnb/android/models/Collection;
    .param p3, "trackingPosition"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/airbnb/android/events/WishListModifiedEvent;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->listing:Lcom/airbnb/android/models/Listing;

    .line 39
    iput-object p2, p0, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->wishList:Lcom/airbnb/android/models/Collection;

    .line 40
    iput-object p3, p0, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->trackingPosition:Ljava/lang/String;

    .line 41
    return-void
.end method
