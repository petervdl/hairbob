.class public Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ReviewRatingFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ReviewRatingsAdapter$CanProgress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;,
        Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;
    }
.end annotation


# static fields
.field private static final KEY_RATING_TYPE:Ljava/lang/String; = "rating_type"

.field private static final KEY_REVIEW:Ljava/lang/String; = "review"


# instance fields
.field private mExclamation:Landroid/widget/TextView;

.field mRatingChangeTime:J

.field private mRatingStars:Landroid/widget/RatingBar;

.field private mRatingUpdatedCallback:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;

.field private mReview:Lcom/airbnb/android/models/Review;

.field private mType:Lcom/airbnb/android/models/Review$RatingType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Lcom/airbnb/android/models/Review$RatingType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mType:Lcom/airbnb/android/models/Review$RatingType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Lcom/airbnb/android/models/Review;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mReview:Lcom/airbnb/android/models/Review;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingUpdatedCallback:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Landroid/widget/RatingBar;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingStars:Landroid/widget/RatingBar;

    return-object v0
.end method

.method private getExclamation(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .param p1, "rating"    # Ljava/lang/Integer;

    .prologue
    .line 87
    if-nez p1, :cond_6

    .line 88
    const-string/jumbo v0, ""

    .line 103
    :goto_5
    return-object v0

    .line 91
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 103
    const-string/jumbo v0, ""

    goto :goto_5

    .line 93
    :pswitch_11
    const v0, 0x7f0e0658

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 95
    :pswitch_19
    const v0, 0x7f0e065a

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 97
    :pswitch_21
    const v0, 0x7f0e0659

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 99
    :pswitch_29
    const v0, 0x7f0e0657

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 101
    :pswitch_31
    const v0, 0x7f0e0656

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 91
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_19
        :pswitch_21
        :pswitch_29
        :pswitch_31
    .end packed-switch
.end method

.method private initializeViews(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    const v6, 0x7f080276

    invoke-static {p1, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 110
    .local v4, "title":Landroid/widget/TextView;
    const v6, 0x7f080277

    invoke-static {p1, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 111
    .local v2, "subtitle":Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 112
    .local v5, "titleId":I
    const/4 v3, 0x0

    .line 114
    .local v3, "subtitleId":I
    iget-object v6, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Review;->getReviewRole()Lcom/airbnb/android/models/ReviewRole;

    move-result-object v6

    sget-object v7, Lcom/airbnb/android/models/ReviewRole;->Host:Lcom/airbnb/android/models/ReviewRole;

    if-ne v6, v7, :cond_5d

    const/4 v0, 0x1

    .line 115
    .local v0, "isHostRole":Z
    :goto_1f
    sget-object v6, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    iget-object v7, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mType:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_a4

    .line 151
    :goto_2c
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 152
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 154
    const v6, 0x7f080278

    invoke-static {p1, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mExclamation:Landroid/widget/TextView;

    .line 157
    const v6, 0x7f080279

    invoke-static {p1, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RatingBar;

    iput-object v6, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingStars:Landroid/widget/RatingBar;

    .line 160
    new-instance v1, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$1;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)V

    .line 178
    .local v1, "ratingBarListener":Landroid/widget/RatingBar$OnRatingBarChangeListener;
    iget-object v6, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingStars:Landroid/widget/RatingBar;

    invoke-virtual {v6, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 182
    iget-object v6, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingStars:Landroid/widget/RatingBar;

    new-instance v7, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;

    invoke-direct {v7, p0, v1}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    invoke-virtual {v6, v7}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    return-void

    .line 114
    .end local v0    # "isHostRole":Z
    .end local v1    # "ratingBarListener":Landroid/widget/RatingBar$OnRatingBarChangeListener;
    :cond_5d
    const/4 v0, 0x0

    goto :goto_1f

    .line 117
    .restart local v0    # "isHostRole":Z
    :pswitch_5f
    const v5, 0x7f0e0646

    .line 118
    const v3, 0x7f0e0645

    .line 119
    goto :goto_2c

    .line 121
    :pswitch_66
    const v5, 0x7f0e062f

    .line 122
    const v3, 0x7f0e062e

    .line 123
    goto :goto_2c

    .line 125
    :pswitch_6d
    const v5, 0x7f0e0637

    .line 126
    if-eqz v0, :cond_76

    const v3, 0x7f0e0635

    .line 128
    :goto_75
    goto :goto_2c

    .line 126
    :cond_76
    const v3, 0x7f0e0636

    goto :goto_75

    .line 130
    :pswitch_7a
    const v5, 0x7f0e063a

    .line 131
    if-eqz v0, :cond_83

    const v3, 0x7f0e0638

    .line 133
    :goto_82
    goto :goto_2c

    .line 131
    :cond_83
    const v3, 0x7f0e0639

    goto :goto_82

    .line 135
    :pswitch_87
    const v5, 0x7f0e0640

    .line 136
    const v3, 0x7f0e063f

    .line 137
    goto :goto_2c

    .line 139
    :pswitch_8e
    const v5, 0x7f0e0634

    .line 140
    const v3, 0x7f0e0633

    .line 141
    goto :goto_2c

    .line 143
    :pswitch_95
    const v5, 0x7f0e0642

    .line 144
    const v3, 0x7f0e0641

    .line 145
    goto :goto_2c

    .line 147
    :pswitch_9c
    const v5, 0x7f0e0664

    .line 148
    const v3, 0x7f0e0663

    goto :goto_2c

    .line 115
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_66
        :pswitch_6d
        :pswitch_7a
        :pswitch_87
        :pswitch_8e
        :pswitch_95
        :pswitch_9c
    .end packed-switch
.end method

.method public static newInstance(Lcom/airbnb/android/models/Review;Lcom/airbnb/android/models/Review$RatingType;)Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;
    .registers 6
    .param p0, "review"    # Lcom/airbnb/android/models/Review;
    .param p1, "type"    # Lcom/airbnb/android/models/Review$RatingType;

    .prologue
    .line 42
    new-instance v1, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;-><init>()V

    .line 43
    .local v1, "f":Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "review"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    const-string/jumbo v2, "rating_type"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method

.method private updateRating()V
    .registers 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mReview:Lcom/airbnb/android/models/Review;

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mType:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Review;->getRatingValue(Lcom/airbnb/android/models/Review$RatingType;)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    .local v0, "rating":Ljava/lang/Integer;
    if-eqz v0, :cond_1d

    .line 80
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingStars:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 82
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mExclamation:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->getExclamation(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_1d
    return-void
.end method


# virtual methods
.method public canProgress()Z
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mReview:Lcom/airbnb/android/models/Review;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mType:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Review;->getRatingValue(Lcom/airbnb/android/models/Review$RatingType;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    instance-of v0, p1, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;

    if-nez v0, :cond_25

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement RatingUpdatedCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_25
    check-cast p1, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingUpdatedCallback:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v1, 0x7f0300de

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "review"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Review;

    iput-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mReview:Lcom/airbnb/android/models/Review;

    .line 55
    invoke-static {}, Lcom/airbnb/android/models/Review$RatingType;->values()[Lcom/airbnb/android/models/Review$RatingType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "rating_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mType:Lcom/airbnb/android/models/Review$RatingType;

    .line 57
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->initializeViews(Landroid/view/View;)V

    .line 59
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 226
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->updateRating()V

    .line 75
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onStart()V

    .line 212
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Review;->isSubmitted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 213
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 215
    :cond_12
    return-void
.end method

.method public reviewUpdated(Lcom/airbnb/android/events/ReviewUpdatedEvent;)V
    .registers 3
    .param p1, "update"    # Lcom/airbnb/android/events/ReviewUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p1, Lcom/airbnb/android/events/ReviewUpdatedEvent;->review:Lcom/airbnb/android/models/Review;

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mReview:Lcom/airbnb/android/models/Review;

    .line 238
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 239
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->updateRating()V

    .line 241
    :cond_d
    return-void
.end method
