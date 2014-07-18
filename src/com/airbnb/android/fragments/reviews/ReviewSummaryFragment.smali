.class public Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ReviewSummaryFragment.java"


# static fields
.field private static final KEY_REVIEW:Ljava/lang/String; = "review"


# instance fields
.field private mDoubleBlindExperiment:Z

.field private mGuestName:Landroid/widget/TextView;

.field private mHeader:Landroid/widget/FrameLayout;

.field private mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

.field private mHeaderImage:Lcom/airbnb/android/views/HaloImageView;

.field private mListingName:Landroid/widget/TextView;

.field private mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field private mOverallRating:Landroid/widget/RatingBar;

.field private mOverallRatingLayout:Landroid/widget/LinearLayout;

.field private mOverallRatingTextView:Landroid/widget/TextView;

.field private mPrivateFeedback:Landroid/widget/TextView;

.field private mPrivateFeedbackLayout:Landroid/widget/LinearLayout;

.field private mPrivateFeedbackTitle:Landroid/widget/TextView;

.field private mPublicFeedback:Landroid/widget/TextView;

.field private mPublicFeedbackLayout:Landroid/widget/LinearLayout;

.field private mRecommendImage:Landroid/widget/ImageView;

.field private mRecommendTitle:Landroid/widget/TextView;

.field private mRecommendedLayout:Landroid/widget/LinearLayout;

.field private mReservationDates:Landroid/widget/TextView;

.field private mReview:Lcom/airbnb/android/models/Review;

.field private mRevieweeImage:Lcom/airbnb/android/views/HaloImageView;

.field private mReviewerImage:Lcom/airbnb/android/views/HaloImageView;

.field private mSubmitButton:Lcom/airbnb/android/views/StickyButton;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/models/Review;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/views/LoaderFrame;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mDoubleBlindExperiment:Z

    return v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPublicFeedbackLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPrivateFeedbackLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mOverallRatingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRecommendedLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initializeViews(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    const v2, 0x7f08027e

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeader:Landroid/widget/FrameLayout;

    .line 149
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeader:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$1;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a2

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/AirImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

    .line 157
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    if-eqz v2, :cond_144

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 158
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    :goto_34
    if-eqz v0, :cond_147

    .line 159
    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/BlurredBitmap;->fetchAndBlur(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 164
    :goto_3f
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a3

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/HaloImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeaderImage:Lcom/airbnb/android/views/HaloImageView;

    .line 165
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a4

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mGuestName:Landroid/widget/TextView;

    .line 166
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a5

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mListingName:Landroid/widget/TextView;

    .line 167
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a6

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReservationDates:Landroid/widget/TextView;

    .line 168
    const v2, 0x7f08027f

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPublicFeedback:Landroid/widget/TextView;

    .line 169
    const v2, 0x7f080271

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPrivateFeedbackTitle:Landroid/widget/TextView;

    .line 170
    const v2, 0x7f080282

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPrivateFeedback:Landroid/widget/TextView;

    .line 171
    const v2, 0x7f08027a

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRecommendTitle:Landroid/widget/TextView;

    .line 172
    const v2, 0x7f080288

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRecommendImage:Landroid/widget/ImageView;

    .line 173
    const v2, 0x7f080281

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/HaloImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRevieweeImage:Lcom/airbnb/android/views/HaloImageView;

    .line 174
    const v2, 0x7f080280

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/HaloImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReviewerImage:Lcom/airbnb/android/views/HaloImageView;

    .line 175
    const v2, 0x7f080286

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mOverallRating:Landroid/widget/RatingBar;

    .line 176
    const v2, 0x7f080026

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 177
    const v2, 0x7f080230

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/StickyButton;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mSubmitButton:Lcom/airbnb/android/views/StickyButton;

    .line 178
    const v2, 0x7f080285

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mOverallRatingTextView:Landroid/widget/TextView;

    .line 179
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mSubmitButton:Lcom/airbnb/android/views/StickyButton;

    const v3, 0x7f0e0735

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 180
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mSubmitButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v1, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)V

    .line 251
    .local v1, "sectionClickListener":Landroid/view/View$OnClickListener;
    const v2, 0x7f08026a

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPublicFeedbackLayout:Landroid/widget/LinearLayout;

    .line 252
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPublicFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const v2, 0x7f08026e

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPrivateFeedbackLayout:Landroid/widget/LinearLayout;

    .line 255
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPrivateFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v2, 0x7f080283

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mOverallRatingLayout:Landroid/widget/LinearLayout;

    .line 258
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mOverallRatingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v2, 0x7f080287

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRecommendedLayout:Landroid/widget/LinearLayout;

    .line 261
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRecommendedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void

    .line 157
    .end local v0    # "listing":Lcom/airbnb/android/models/Listing;
    .end local v1    # "sectionClickListener":Landroid/view/View$OnClickListener;
    :cond_144
    const/4 v0, 0x0

    goto/16 :goto_34

    .line 161
    .restart local v0    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_147
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

    const v3, 0x7f0200db

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirImageView;->setImageResource(I)V

    goto/16 :goto_3f
.end method

.method private loadFields()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 114
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    .line 115
    .local v2, "reservation":Lcom/airbnb/android/models/Reservation;
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReservationDates:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v10

    invoke-static {v7, v9, v10}, Lcom/airbnb/android/utils/DateHelper;->getStringDateSpan(Landroid/content/Context;Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mListingName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Review;->getListingName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPublicFeedback:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Review;->getPublicFeedback()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPrivateFeedback:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Review;->getPrivateFeedback()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v7, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPrivateFeedbackLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Review;->getPrivateFeedback()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_fd

    const/16 v5, 0x8

    :goto_4e
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Review;->isRecommended()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_100

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Review;->isRecommended()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_100

    move v0, v8

    .line 127
    .local v0, "recommended":Z
    :goto_66
    if-eqz v0, :cond_103

    const v5, 0x7f020202

    move v7, v5

    :goto_6c
    if-eqz v0, :cond_109

    const v5, 0x7f0a0028

    :goto_71
    invoke-static {v7, v5}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdStateList(II)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v1

    .line 129
    .local v1, "recommendedDrawable":Lcom/airbnb/android/utils/ColorizedDrawable;
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRecommendImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReviewerImage:Lcom/airbnb/android/views/HaloImageView;

    iget-object v7, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Review;->getReviewer()Lcom/airbnb/android/models/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 131
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mOverallRating:Landroid/widget/RatingBar;

    iget-object v7, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Review;->getAverageRating()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/widget/RatingBar;->setRating(F)V

    .line 133
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v3

    .line 134
    .local v3, "reviewee":Lcom/airbnb/android/models/User;
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRevieweeImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 135
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mHeaderImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "revieweeFirstName":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mGuestName:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPrivateFeedbackTitle:Landroid/widget/TextView;

    const v7, 0x7f0e064f

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v6

    invoke-virtual {p0, v7, v9}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRecommendTitle:Landroid/widget/TextView;

    const v7, 0x7f0e0666

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v6

    invoke-virtual {p0, v7, v9}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Review;->isOverallRatingComputed()Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 143
    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mOverallRatingTextView:Landroid/widget/TextView;

    const v7, 0x7f0e0644

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Review;->getRatingTypesUsedForOverall()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_fc
    return-void

    .end local v0    # "recommended":Z
    .end local v1    # "recommendedDrawable":Lcom/airbnb/android/utils/ColorizedDrawable;
    .end local v3    # "reviewee":Lcom/airbnb/android/models/User;
    .end local v4    # "revieweeFirstName":Ljava/lang/String;
    :cond_fd
    move v5, v6

    .line 123
    goto/16 :goto_4e

    :cond_100
    move v0, v6

    .line 125
    goto/16 :goto_66

    .line 127
    .restart local v0    # "recommended":Z
    :cond_103
    const v5, 0x7f020201

    move v7, v5

    goto/16 :goto_6c

    :cond_109
    const v5, 0x7f0a002b

    goto/16 :goto_71
.end method

.method public static newInstance(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;
    .registers 4
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 79
    new-instance v1, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;-><init>()V

    .line 80
    .local v1, "f":Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "review"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const v1, 0x7f0300e0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "review"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Review;

    iput-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    .line 90
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->isDoubleBlind()Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mDoubleBlindExperiment:Z

    .line 91
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->initializeViews(Landroid/view/View;)V

    .line 92
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 110
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 98
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->loadFields()V

    .line 99
    return-void
.end method

.method public reviewUpdated(Lcom/airbnb/android/events/ReviewUpdatedEvent;)V
    .registers 3
    .param p1, "update"    # Lcom/airbnb/android/events/ReviewUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p1, Lcom/airbnb/android/events/ReviewUpdatedEvent;->review:Lcom/airbnb/android/models/Review;

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    .line 269
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Review;->isSubmitted()Z

    move-result v0

    if-nez v0, :cond_15

    .line 270
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->loadFields()V

    .line 272
    :cond_15
    return-void
.end method
