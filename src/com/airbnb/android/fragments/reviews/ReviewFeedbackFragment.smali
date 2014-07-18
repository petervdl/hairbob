.class public Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ReviewFeedbackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;
    }
.end annotation


# static fields
.field private static final DIALOG_REQ_CONFIRM_QUIT:I = 0x2332

.field private static final KEY_EDIT_FLAG:Ljava/lang/String; = "edit"

.field private static final KEY_REVIEW:Ljava/lang/String; = "review"

.field private static final MAX_WORDS_PUBLIC_FEEDBACK:I = 0x1f4

.field private static final MIN_CHARS_IN_REVIEW_FOR_PROMPT:I = 0xa


# instance fields
.field private mDoubleBlindExperiment:Z

.field private mDoubleBlindFtueSeen:Z

.field private mEditMode:Z

.field private mFieldToEdit:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

.field private mGuestName:Landroid/widget/TextView;

.field private mHeader:Landroid/widget/FrameLayout;

.field private mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

.field private mHeaderImage:Lcom/airbnb/android/views/HaloImageView;

.field private mIsSoftKeyboardShown:Z

.field private mListingName:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPrivateFeedbackDescription:Landroid/widget/TextView;

.field private mPrivateFeedbackEditText:Landroid/widget/EditText;

.field private mPrivateFeedbackLayout:Landroid/widget/LinearLayout;

.field private mPrivateFeedbackTitle:Landroid/widget/TextView;

.field private mPublicFeedbackDescription:Landroid/widget/TextView;

.field private mPublicFeedbackEditText:Landroid/widget/EditText;

.field private mPublicFeedbackLayout:Landroid/widget/LinearLayout;

.field private mPublicFeedbackTitle:Landroid/widget/TextView;

.field private mReservationDates:Landroid/widget/TextView;

.field private mReview:Lcom/airbnb/android/models/Review;

.field private mRevieweeFirstName:Ljava/lang/String;

.field private mRevieweeImage:Lcom/airbnb/android/views/HaloImageView;

.field private mReviewerImage:Lcom/airbnb/android/views/HaloImageView;

.field private mStatusAndActionBarHeight:I

.field private mToolTipSeen:Z

.field private mTooltip:Landroid/widget/ImageView;

.field private mWordsLeft:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 86
    const/16 v0, 0x96

    iput v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mStatusAndActionBarHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mStatusAndActionBarHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mStatusAndActionBarHeight:I

    return p1
.end method

.method static synthetic access$012(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;I)I
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iget v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mStatusAndActionBarHeight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mStatusAndActionBarHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->onSoftKeyboardChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->saveFeedback()V

    return-void
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mEditMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Lcom/airbnb/android/models/Review;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->updateWordsLeft(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mWordsLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->showTooltip()V

    return-void
.end method

.method private initializeViews(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 266
    const v2, 0x7f08026a

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackLayout:Landroid/widget/LinearLayout;

    .line 267
    const v2, 0x7f08026e

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackLayout:Landroid/widget/LinearLayout;

    .line 269
    new-instance v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$3;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$3;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V

    .line 284
    .local v0, "cardClickListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v2, 0x7f080270

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/HaloImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeImage:Lcom/airbnb/android/views/HaloImageView;

    .line 288
    const v2, 0x7f08026f

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/HaloImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReviewerImage:Lcom/airbnb/android/views/HaloImageView;

    .line 289
    const v2, 0x7f080269

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeader:Landroid/widget/FrameLayout;

    .line 290
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeader:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$4;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a3

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/HaloImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeaderImage:Lcom/airbnb/android/views/HaloImageView;

    .line 298
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a2

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/AirImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

    .line 299
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    if-eqz v2, :cond_172

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    .line 300
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    :goto_7f
    if-eqz v1, :cond_175

    .line 301
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/BlurredBitmap;->fetchAndBlur(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 306
    :goto_8a
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a4

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mGuestName:Landroid/widget/TextView;

    .line 307
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a5

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mListingName:Landroid/widget/TextView;

    .line 308
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeader:Landroid/widget/FrameLayout;

    const v3, 0x7f0800a6

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReservationDates:Landroid/widget/TextView;

    .line 309
    const v2, 0x7f080271

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackTitle:Landroid/widget/TextView;

    .line 310
    const v2, 0x7f080272

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackDescription:Landroid/widget/TextView;

    .line 312
    const v2, 0x7f08026b

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackTitle:Landroid/widget/TextView;

    .line 313
    const v2, 0x7f08026c

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackDescription:Landroid/widget/TextView;

    .line 315
    const v2, 0x7f08026d

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;

    .line 316
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$5;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 340
    const v2, 0x7f080273

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;

    .line 341
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$6;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$6;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 349
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->isGuestReviewingHost()Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 350
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackTitle:Landroid/widget/TextView;

    const v3, 0x7f0e0655

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 352
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mDoubleBlindExperiment:Z

    if-eqz v2, :cond_17f

    .line 353
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackDescription:Landroid/widget/TextView;

    const v3, 0x7f0e0653

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 354
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackDescription:Landroid/widget/TextView;

    const v3, 0x7f0e064e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :goto_139
    const v2, 0x7f0800da

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mTooltip:Landroid/widget/ImageView;

    .line 372
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mTooltip:Landroid/widget/ImageView;

    new-instance v3, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$7;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$7;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v2, 0x7f080267

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mNextButton:Landroid/widget/Button;

    .line 380
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mNextButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const v2, 0x7f080266

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mWordsLeft:Landroid/widget/TextView;

    .line 400
    invoke-direct {p0, v6}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->updateWordsLeft(I)Z

    .line 401
    return-void

    .line 299
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_172
    const/4 v1, 0x0

    goto/16 :goto_7f

    .line 303
    .restart local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_175
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

    const v3, 0x7f0200db

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirImageView;->setImageResource(I)V

    goto/16 :goto_8a

    .line 356
    :cond_17f
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackDescription:Landroid/widget/TextView;

    const v3, 0x7f0e0652

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 357
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackDescription:Landroid/widget/TextView;

    const v3, 0x7f0e064d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_139

    .line 360
    :cond_19e
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackTitle:Landroid/widget/TextView;

    const v3, 0x7f0e0654

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 362
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mDoubleBlindExperiment:Z

    if-eqz v2, :cond_1ca

    .line 363
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackDescription:Landroid/widget/TextView;

    const v3, 0x7f0e0651

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 364
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackDescription:Landroid/widget/TextView;

    const v3, 0x7f0e064c

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_139

    .line 366
    :cond_1ca
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackDescription:Landroid/widget/TextView;

    const v3, 0x7f0e0650

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 367
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackDescription:Landroid/widget/TextView;

    const v3, 0x7f0e064b

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_139
.end method

.method private loadFields()V
    .registers 8

    .prologue
    .line 243
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 244
    .local v0, "reviewee":Lcom/airbnb/android/models/User;
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "revieweePic":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeaderImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReviewerImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mGuestName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReservationDates:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/utils/DateHelper;->getStringDateSpan(Landroid/content/Context;Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mListingName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Review;->getListingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackTitle:Landroid/widget/TextView;

    const v3, 0x7f0e064f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getPublicFeedback()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->updateFeedbackField(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 262
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getPrivateFeedback()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->updateFeedbackField(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 263
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    .registers 4
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 92
    new-instance v1, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;-><init>()V

    .line 93
    .local v1, "f":Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "review"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 96
    return-object v1
.end method

.method public static newInstanceEditPrivateFeedback(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 108
    invoke-static {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->newInstance(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    move-result-object v1

    .line 109
    .local v1, "f":Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "edit"

    sget-object v3, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->Private:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    return-object v1
.end method

.method public static newInstanceEditPublicFeedback(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->newInstance(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    move-result-object v1

    .line 101
    .local v1, "f":Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "edit"

    sget-object v3, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->Public:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    return-object v1
.end method

.method private onSoftKeyboardChanged(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mIsSoftKeyboardShown:Z

    if-eq p1, v0, :cond_f

    .line 179
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mIsSoftKeyboardShown:Z

    .line 181
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mHeader:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_10

    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 183
    :cond_f
    return-void

    .line 181
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private saveFeedback()V
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Review;->setPublicFeedback(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Review;->setPrivateFeedback(Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ReviewUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ReviewUpdatedEvent;-><init>(Lcom/airbnb/android/models/Review;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method private showDoubleBlindFtue()V
    .registers 5

    .prologue
    .line 441
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-static {v0}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackDoubleBlindFtue(Lcom/airbnb/android/models/Review;)V

    .line 442
    const v0, 0x7f0e063c

    const v1, 0x7f0e063b

    const v2, 0x7f0e063e

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->newInstance(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method private showTooltip()V
    .registers 4

    .prologue
    .line 436
    const v1, 0x7f0e0662

    const v2, 0x7f0e0661

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    move-result-object v0

    .line 437
    .local v0, "f":Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tooltip"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private showTooltipIfNecessary()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 425
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mToolTipSeen:Z

    if-nez v1, :cond_23

    .line 426
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->showTooltip()V

    .line 427
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mToolTipSeen:Z

    .line 429
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "review_tooltip_seen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 433
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_23
    return-void
.end method

.method private updateFeedbackField(Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 4
    .param p1, "feedback"    # Ljava/lang/String;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 448
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 450
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 452
    :cond_10
    return-void
.end method

.method private updateWordsLeft(I)Z
    .registers 9
    .param p1, "wordCount"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    rsub-int v0, p1, 0x1f4

    .line 416
    .local v0, "wordsLeft":I
    if-gez v0, :cond_7

    .line 417
    const/4 v0, 0x0

    .line 420
    :cond_7
    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mWordsLeft:Landroid/widget/TextView;

    const v4, 0x7f0e0665

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    if-lez v0, :cond_1e

    :goto_1d
    return v1

    :cond_1e
    move v1, v2

    goto :goto_1d
.end method


# virtual methods
.method public finishReviewFeedbackActivity()V
    .registers 7

    .prologue
    const/16 v1, 0xa

    .line 468
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt v0, v1, :cond_1a

    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v1, :cond_47

    .line 470
    :cond_1a
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e008a

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/4 v2, 0x0

    const v3, 0x7f0e05f5

    const/16 v4, 0x2332

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 478
    :goto_46
    return-void

    .line 476
    :cond_47
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->finishActivity()V

    goto :goto_46
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 482
    const/16 v0, 0x2332

    if-ne p1, v0, :cond_e

    .line 483
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->finishActivity()V

    .line 487
    :goto_d
    return-void

    .line 485
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "review_tooltip_seen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mToolTipSeen:Z

    .line 193
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "double_blind_review_ftue_seen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mDoubleBlindFtueSeen:Z

    .line 197
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "review"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Review;

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    .line 198
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mRevieweeFirstName:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Review;->isDoubleBlind()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mDoubleBlindExperiment:Z

    .line 201
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    const v1, 0x7f0300dc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "edit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mEditMode:Z

    .line 121
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mEditMode:Z

    if-eqz v1, :cond_30

    .line 122
    invoke-static {}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->values()[Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "edit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mFieldToEdit:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    .line 127
    :goto_2c
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->initializeViews(Landroid/view/View;)V

    .line 129
    return-object v0

    .line 124
    :cond_30
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-static {v1}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackFeedbackSection(Lcom/airbnb/android/models/Review;)V

    goto :goto_2c
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 239
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onPause()V

    .line 174
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->saveFeedback()V

    .line 175
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 134
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 135
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->loadFields()V

    .line 137
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mEditMode:Z

    if-eqz v2, :cond_1c

    .line 138
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mFieldToEdit:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    sget-object v3, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->Public:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    if-ne v2, v3, :cond_35

    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;

    .line 139
    .local v0, "fieldToFocus":Landroid/widget/EditText;
    :goto_12
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 140
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 145
    .end local v0    # "fieldToFocus":Landroid/widget/EditText;
    :cond_1c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, "rootView":Landroid/view/View;
    new-instance v2, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$1;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$2;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 167
    return-void

    .line 138
    .end local v1    # "rootView":Landroid/view/View;
    :cond_35
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;

    goto :goto_12
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 205
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onStart()V

    .line 208
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->isSubmitted()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 209
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 212
    :cond_13
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->isDoubleBlind()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 214
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->hasReviewerSubmittedAPreviousReview()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 215
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mDoubleBlindFtueSeen:Z

    if-nez v1, :cond_2a

    .line 216
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->showDoubleBlindFtue()V

    .line 223
    :cond_2a
    :goto_2a
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mDoubleBlindFtueSeen:Z

    if-nez v1, :cond_4f

    .line 224
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mDoubleBlindFtueSeen:Z

    .line 226
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "review_tooltip_seen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string/jumbo v1, "double_blind_review_ftue_seen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4f
    :goto_4f
    return-void

    .line 220
    :cond_50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->showTooltipIfNecessary()V

    goto :goto_2a

    .line 232
    :cond_54
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->showTooltipIfNecessary()V

    goto :goto_4f
.end method

.method public reviewUpdated(Lcom/airbnb/android/events/ReviewUpdatedEvent;)V
    .registers 3
    .param p1, "update"    # Lcom/airbnb/android/events/ReviewUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p1, Lcom/airbnb/android/events/ReviewUpdatedEvent;->review:Lcom/airbnb/android/models/Review;

    iput-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;

    .line 458
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 459
    invoke-direct {p0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->loadFields()V

    .line 461
    :cond_d
    return-void
.end method
