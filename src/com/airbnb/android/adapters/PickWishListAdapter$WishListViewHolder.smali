.class public Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;
.super Ljava/lang/Object;
.source "PickWishListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/PickWishListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WishListViewHolder"
.end annotation


# instance fields
.field addedCheckmark:Landroid/widget/ImageView;

.field coverImageView:Lcom/airbnb/android/views/AirImageView;

.field divider:Landroid/view/View;

.field listingsCount:Landroid/widget/TextView;

.field privacyIndicator:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;

.field wishList:Lcom/airbnb/android/models/Collection;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWishList()Lcom/airbnb/android/models/Collection;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->wishList:Lcom/airbnb/android/models/Collection;

    return-object v0
.end method
