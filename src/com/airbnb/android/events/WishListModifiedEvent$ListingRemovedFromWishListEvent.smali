.class public Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;
.super Lcom/airbnb/android/events/WishListModifiedEvent;
.source "WishListModifiedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/events/WishListModifiedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingRemovedFromWishListEvent"
.end annotation


# instance fields
.field public listing:Lcom/airbnb/android/models/Listing;

.field public wishList:Lcom/airbnb/android/models/Collection;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Collection;)V
    .registers 3
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "wishList"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/events/WishListModifiedEvent;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;->listing:Lcom/airbnb/android/models/Listing;

    .line 50
    iput-object p2, p0, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;->wishList:Lcom/airbnb/android/models/Collection;

    .line 51
    return-void
.end method
