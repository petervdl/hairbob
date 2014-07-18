.class public Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ReviewRecommendFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ReviewRatingsAdapter$CanProgress;
.implements Lcom/airbnb/android/adapters/ReviewRatingsAdapter$SetEditMode;


# static fields
.field private static final KEY_REVIEW:Ljava/lang/String; = "review"

.field protected static final MSG_FINISH:I = 0x1

.field private static final SHOW_SUMMARY_DELAY:J = 0x1f4L


# instance fields
.field private mEditMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mNoSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mNoUnselectedDrawable:Landroid/graphics/drawable/Drawable;

.field mRecommendNo:Landroid/widget/ImageView;

.field mRecommendSubtitle:Landroid/widget/TextView;

.field mRecommendTitle:Landroid/widget/TextView;

.field mRecommendYes:Landroid/widget/ImageView;

.field private mReview:Lcom/airbnb/android/models/Review;

.field private mYesSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mYesUnselectedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)Lcom/airbnb/android/models/Review;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->updateViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mEditMode:Z

    return v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;
    .registers 4
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 50
    new-instance v1, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;-><init>()V

    .line 51
    .local v1, "f":Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "review"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method

.method private setThumbColorizedDrawables()V
    .registers 4

    .prologue
    const v2, 0x7f020202

    const v1, 0x7f020201

    .line 161
    const v0, 0x7f0a0028

    invoke-static {v2, v0}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mYesSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    const v0, 0x7f0a0029

    invoke-static {v2, v0}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mYesUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    const v0, 0x7f0a002b

    invoke-static {v1, v0}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mNoSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    const v0, 0x7f0a002d

    invoke-static {v1, v0}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mNoUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendYes:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mYesUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendNo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mNoUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    return-void
.end method

.method private updateViews()V
    .registers 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->isRecommended()Ljava/lang/Boolean;

    move-result-object v0

    .line 113
    .local v0, "recommended":Ljava/lang/Boolean;
    if-eqz v0, :cond_22

    .line 114
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendYes:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mYesSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_12
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendNo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mNoSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1f
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_22
    return-void

    .line 114
    :cond_23
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mYesUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_12

    .line 115
    :cond_26
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mNoUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1f
.end method


# virtual methods
.method public canProgress()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Review;->isRecommended()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v2, 0x7f0300df

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 62
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->setThumbColorizedDrawables()V

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "review"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Review;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;

    .line 65
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendTitle:Landroid/widget/TextView;

    const v3, 0x7f0e0666

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendSubtitle:Landroid/widget/TextView;

    const v3, 0x7f0e0632

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v1, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)V

    .line 84
    .local v1, "yesNoClickListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendNo:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendYes:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$2;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mHandler:Landroid/os/Handler;

    .line 102
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 138
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->updateViews()V

    .line 109
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onStart()V

    .line 124
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Review;->isSubmitted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 125
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 127
    :cond_12
    return-void
.end method

.method public reviewUpdated(Lcom/airbnb/android/events/ReviewUpdatedEvent;)V
    .registers 3
    .param p1, "update"    # Lcom/airbnb/android/events/ReviewUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p1, Lcom/airbnb/android/events/ReviewUpdatedEvent;->review:Lcom/airbnb/android/models/Review;

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;

    .line 150
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 151
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->updateViews()V

    .line 153
    :cond_d
    return-void
.end method

.method public setEditMode(Z)V
    .registers 2
    .param p1, "editMode"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mEditMode:Z

    .line 158
    return-void
.end method
