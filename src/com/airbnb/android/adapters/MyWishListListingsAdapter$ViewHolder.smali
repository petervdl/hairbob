.class final Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MyWishListListingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/MyWishListListingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field hostPhoto:Lcom/airbnb/android/views/HaloImageView;

.field listingPriceTag:Landroid/view/View;

.field locationTextView:Landroid/widget/TextView;

.field nameTextView:Landroid/widget/TextView;

.field position:I

.field viewPager:Lcom/airbnb/android/views/ClickableViewPager;

.field wishListButton:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;-><init>()V

    return-void
.end method
