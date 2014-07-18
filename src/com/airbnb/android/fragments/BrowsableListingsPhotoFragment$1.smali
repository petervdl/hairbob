.class Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$1;
.super Ljava/lang/Object;
.source "BrowsableListingsPhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V

    .line 97
    return-void
.end method

.method public listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V

    .line 92
    return-void
.end method
