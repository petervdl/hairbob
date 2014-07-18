.class public Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field detailsView:Landroid/view/View;

.field hostPhoto:Lcom/airbnb/android/views/HaloImageView;

.field listing:Lcom/airbnb/android/models/Listing;

.field listingPriceTag:Landroid/view/View;

.field mapHint:Landroid/widget/ImageView;

.field nameTextView:Landroid/widget/TextView;

.field photoHint:Landroid/widget/ImageView;

.field position:I

.field subtitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field viewPager:Lcom/airbnb/android/views/ClickableViewPager;

.field wishListButton:Landroid/widget/ImageView;

.field wishListLongPressInner:Landroid/widget/ImageView;

.field wishListLongPressViewContainer:Landroid/widget/FrameLayout;


# direct methods
.method protected constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)V
    .registers 2

    .prologue
    .line 442
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
