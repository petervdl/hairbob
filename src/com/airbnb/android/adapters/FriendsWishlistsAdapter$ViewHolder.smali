.class public Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;
.super Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
.source "FriendsWishlistsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field profileImage:Lcom/airbnb/android/views/HaloImageView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

.field wishlistText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;->this$0:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)V

    return-void
.end method
