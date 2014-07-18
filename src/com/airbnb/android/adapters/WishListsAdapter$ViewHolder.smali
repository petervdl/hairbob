.class public Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WishListsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/WishListsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field listingsCountTextView:Landroid/widget/TextView;

.field nameTextView:Landroid/widget/TextView;

.field wishlistImageView:Lcom/airbnb/android/views/AirImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
