.class public Lcom/airbnb/android/adapters/ReviewRatingsAdapter;
.super Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;
.source "ReviewRatingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/ReviewRatingsAdapter$1;,
        Lcom/airbnb/android/adapters/ReviewRatingsAdapter$SetEditMode;,
        Lcom/airbnb/android/adapters/ReviewRatingsAdapter$CanProgress;
    }
.end annotation


# instance fields
.field private mEditMode:Z

.field private mRatingTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Review$RatingType;",
            ">;"
        }
    .end annotation
.end field

.field private mReview:Lcom/airbnb/android/models/Review;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Review;Z)V
    .registers 5
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "review"    # Lcom/airbnb/android/models/Review;
    .param p3, "editMode"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 29
    iput-object p2, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mReview:Lcom/airbnb/android/models/Review;

    .line 30
    iput-boolean p3, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mEditMode:Z

    .line 31
    iget-object v0, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Review;->getRatingTypes()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mRatingTypes:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public canAdvance(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 63
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter$CanProgress;

    if-nez v1, :cond_a

    .line 67
    const/4 v1, 0x0

    .line 70
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_9
    return v1

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_a
    check-cast v0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter$CanProgress;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0}, Lcom/airbnb/android/adapters/ReviewRatingsAdapter$CanProgress;->canProgress()Z

    move-result v1

    goto :goto_9
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mRatingTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v2, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mRatingTypes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Review$RatingType;

    .line 38
    .local v1, "type":Lcom/airbnb/android/models/Review$RatingType;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 39
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_1f

    .line 40
    sget-object v2, Lcom/airbnb/android/adapters/ReviewRatingsAdapter$1;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_34

    .line 45
    iget-object v2, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mReview:Lcom/airbnb/android/models/Review;

    invoke-static {v2, v1}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->newInstance(Lcom/airbnb/android/models/Review;Lcom/airbnb/android/models/Review$RatingType;)Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    move-result-object v0

    .line 49
    :cond_1f
    :goto_1f
    instance-of v2, v0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter$SetEditMode;

    if-eqz v2, :cond_2b

    move-object v2, v0

    .line 50
    check-cast v2, Lcom/airbnb/android/adapters/ReviewRatingsAdapter$SetEditMode;

    iget-boolean v3, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mEditMode:Z

    invoke-interface {v2, v3}, Lcom/airbnb/android/adapters/ReviewRatingsAdapter$SetEditMode;->setEditMode(Z)V

    .line 53
    :cond_2b
    return-object v0

    .line 42
    :pswitch_2c
    iget-object v2, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mReview:Lcom/airbnb/android/models/Review;

    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->newInstance(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    move-result-object v0

    .line 43
    goto :goto_1f

    .line 40
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public getRecommendedIndex()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->mRatingTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
