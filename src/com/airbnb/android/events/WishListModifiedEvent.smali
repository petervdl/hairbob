.class public Lcom/airbnb/android/events/WishListModifiedEvent;
.super Ljava/lang/Object;
.source "WishListModifiedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;,
        Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;,
        Lcom/airbnb/android/events/WishListModifiedEvent$WishListUpdatedEvent;,
        Lcom/airbnb/android/events/WishListModifiedEvent$WishListCreatedEvent;,
        Lcom/airbnb/android/events/WishListModifiedEvent$WishListDeletedEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method
