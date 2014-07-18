.class public Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "BaseManageListingFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/OnBackListener;


# instance fields
.field private mAddPhotoIndicator:Landroid/view/View;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mMainPhoto:Lcom/airbnb/android/views/AirImageView;

.field private mPhotoCount:Landroid/widget/TextView;

.field private mPhotoCountIndicator:Landroid/view/View;

.field private mPhotoIcon:Landroid/view/View;

.field private mPhotoStack:Landroid/view/View;

.field protected mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    instance-of v0, p1, Lcom/airbnb/android/interfaces/ManageListingTransitions;

    if-nez v0, :cond_2f

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/ManageListingTransitions;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2f
    check-cast p1, Lcom/airbnb/android/interfaces/ManageListingTransitions;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    .line 38
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 117
    sget-boolean v1, Lcom/airbnb/android/activities/ManageListingActivity;->sDisableFragmentTransactions:Z

    if-eqz v1, :cond_f

    .line 118
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;)V

    .line 120
    .local v0, "a":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 123
    .end local v0    # "a":Landroid/view/animation/Animation;
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_e
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->getListingObject()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->updateViews(Lcom/airbnb/android/models/Listing;)V

    .line 96
    return-void
.end method

.method protected setListingObject(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 113
    return-void
.end method

.method protected setupPhotosView(Landroid/view/View;Lcom/airbnb/android/models/Listing;Landroid/view/View$OnClickListener;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 41
    const v3, 0x7f08041b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "photosView":Landroid/view/View;
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 46
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 47
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v3, v2

    const v4, 0x3f2aaaab

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v3, 0x7f0801a8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/AirImageView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mMainPhoto:Lcom/airbnb/android/views/AirImageView;

    .line 53
    const v3, 0x7f080423

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoCount:Landroid/widget/TextView;

    .line 54
    const v3, 0x7f080422

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mAddPhotoIndicator:Landroid/view/View;

    .line 55
    const v3, 0x7f080424

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoCountIndicator:Landroid/view/View;

    .line 56
    const v3, 0x7f08041c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoStack:Landroid/view/View;

    .line 57
    const v3, 0x7f080425

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoIcon:Landroid/view/View;

    .line 59
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v3

    if-nez v3, :cond_74

    .line 60
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoIcon:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_74
    invoke-virtual {p0, p2}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->updatePhotoDetails(Lcom/airbnb/android/models/Listing;)V

    .line 64
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mMainPhoto:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/AirImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    return-void
.end method

.method public updateListingFromActivity(Lcom/airbnb/android/models/Listing;)V
    .registers 3
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->updateViews(Lcom/airbnb/android/models/Listing;)V

    .line 88
    return-void
.end method

.method protected updatePhotoDetails(Lcom/airbnb/android/models/Listing;)V
    .registers 9
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x8

    .line 68
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPictureCount()I

    move-result v1

    if-nez v1, :cond_1f

    .line 69
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mAddPhotoIndicator:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoCountIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoStack:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mMainPhoto:Lcom/airbnb/android/views/AirImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    :goto_1e
    return-void

    .line 74
    :cond_1f
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mAddPhotoIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoCountIndicator:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoStack:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mMainPhoto:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0020

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPictureCount()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPictureCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->mPhotoCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method protected updateViews(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 100
    return-void
.end method
