.class public interface abstract Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddToWishListListener"
.end annotation


# virtual methods
.method public abstract openWishListSelector(Lcom/airbnb/android/models/Listing;)V
.end method

.method public abstract showFirstTimeLongPressToWishListDialog()V
.end method

.method public abstract showUndoToast(Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;)V
.end method

.method public abstract startSignInFromWishListAdd(Lcom/airbnb/android/models/Listing;)V
.end method
