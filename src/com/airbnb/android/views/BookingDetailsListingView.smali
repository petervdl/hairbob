.class public Lcom/airbnb/android/views/BookingDetailsListingView;
.super Landroid/widget/FrameLayout;
.source "BookingDetailsListingView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BLUR_EDGE_SIZE:I = 0x14

.field private static final BLUR_RADIUS:F = 7.0f


# instance fields
.field mBackground:Lcom/airbnb/android/views/AirImageView;

.field mListingDetails:Landroid/widget/TextView;

.field mListingName:Landroid/widget/TextView;

.field mProfile:Lcom/airbnb/android/views/HaloImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method public showListing(Lcom/airbnb/android/models/Listing;)V
    .registers 12
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/views/BookingDetailsListingView$1;

    invoke-direct {v3, p0, p1}, Lcom/airbnb/android/views/BookingDetailsListingView$1;-><init>(Lcom/airbnb/android/views/BookingDetailsListingView;Lcom/airbnb/android/models/Listing;)V

    invoke-static {v2, v3}, Lcom/airbnb/android/views/AirImageView;->getImage(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 65
    iget-object v2, p0, Lcom/airbnb/android/views/BookingDetailsListingView;->mProfile:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/airbnb/android/views/BookingDetailsListingView;->mListingName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/airbnb/android/views/BookingDetailsListingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0e00a3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0d0002

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const/high16 v4, 0x7f0d0000

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    const v5, 0x7f0d0004

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "details":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/views/BookingDetailsListingView;->mListingDetails:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
