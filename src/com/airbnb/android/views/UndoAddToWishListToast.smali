.class public Lcom/airbnb/android/views/UndoAddToWishListToast;
.super Landroid/widget/RelativeLayout;
.source "UndoAddToWishListToast.java"


# static fields
.field private static final ALPHA_ANIM_DURATION:I = 0x190

.field private static final UNDO_DISMISS_DURATION:I = 0xfa0


# instance fields
.field private mUndoButton:Landroid/widget/TextView;

.field private mUndoMessage:Landroid/widget/TextView;

.field private mUndoView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->setupViews()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->setupViews()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->setupViews()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/UndoAddToWishListToast;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/UndoAddToWishListToast;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private setupViews()V
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301e1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    const v0, 0x7f080513

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;

    .line 55
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;

    const v1, 0x7f080515

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoMessage:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;

    const v1, 0x7f080514

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoButton:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoButton:Landroid/widget/TextView;

    new-instance v1, Lcom/airbnb/android/views/UndoAddToWishListToast$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/UndoAddToWishListToast$1;-><init>(Lcom/airbnb/android/views/UndoAddToWishListToast;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public showUndoToast(Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V
    .registers 10
    .param p1, "wishList"    # Lcom/airbnb/android/models/Collection;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p3, "trackingPosition"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 104
    new-instance v0, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;

    invoke-direct {v0, p2, p1, p3}, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;-><init>(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Collection;Ljava/lang/String;)V

    .line 105
    .local v0, "bundleData":Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_59

    .line 108
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0820

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_5a

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 111
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/airbnb/android/views/UndoAddToWishListToast$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/views/UndoAddToWishListToast$2;-><init>(Lcom/airbnb/android/views/UndoAddToWishListToast;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_59
    return-void

    .line 110
    :array_5a
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
