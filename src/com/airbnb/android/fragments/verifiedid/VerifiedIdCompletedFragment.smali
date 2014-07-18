.class public Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;
.super Landroid/support/v4/app/Fragment;
.source "VerifiedIdCompletedFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field private mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

.field private mCompletionDetailsTextView:Landroid/widget/TextView;

.field private mDoneButton:Lcom/airbnb/android/views/StickyButton;

.field private mListingHeroImage:Landroid/widget/ImageView;

.field private mListingNameTextView:Landroid/widget/TextView;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mReservationContainer:Landroid/widget/FrameLayout;

.field private mReservationDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method private getReservationDetailsText()Ljava/lang/String;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 145
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0e013d

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, "format":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v3

    .line 147
    .local v3, "guestsCount":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002d

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "numGuests":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "checkInDate":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "checkOutDate":Ljava/lang/String;
    const v5, 0x7f0e07e6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object v1, v6, v10

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private hasReservation()Z
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static newInstance(Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;
    .registers 2
    .param p0, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 50
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;-><init>()V

    .line 51
    .local v0, "fragment":Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->setReservation(Lcom/airbnb/android/models/Reservation;)V

    .line 52
    return-object v0
.end method

.method private setupReservationView(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 96
    const v3, 0x7f0802bb

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservationContainer:Landroid/widget/FrameLayout;

    .line 97
    const v3, 0x7f0802bc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mListingHeroImage:Landroid/widget/ImageView;

    .line 98
    const v3, 0x7f0800a5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mListingNameTextView:Landroid/widget/TextView;

    .line 99
    const v3, 0x7f0802bd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservationDescriptionTextView:Landroid/widget/TextView;

    .line 100
    const v3, 0x7f0802be

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mCompletionDetailsTextView:Landroid/widget/TextView;

    .line 102
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->hasReservation()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 103
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 105
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 107
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mListingNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservationDescriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getReservationDetailsText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mCompletionDetailsTextView:Landroid/widget/TextView;

    const v4, 0x7f0e07b1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Reservation;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;)V

    .line 134
    .local v1, "listener":Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    sget-object v0, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 135
    .local v0, "imageLoader":Lcom/android/volley/toolbox/ImageLoader;
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 137
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mDoneButton:Lcom/airbnb/android/views/StickyButton;

    const v4, 0x7f0e07af

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 139
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/VerifiedIdActivity;->hideStepProgressBar()V

    .line 141
    .end local v0    # "imageLoader":Lcom/android/volley/toolbox/ImageLoader;
    .end local v1    # "listener":Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a9
    return-void
.end method


# virtual methods
.method public bitmapBlurComplete(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 155
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mListingHeroImage:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mListingHeroImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 163
    .local v0, "gradientHeight":I
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 165
    .local v2, "shade":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 167
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mListingHeroImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservationContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservationContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mListingHeroImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 171
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mListingHeroImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    .local v1, "heroImageViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 173
    return-void
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 177
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "VerifiedIdCompletedFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_54

    .line 57
    :goto_9
    const v1, 0x7f0300f5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0802ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/CircleBadgeView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    .line 60
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->hasReservation()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 61
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/CircleBadgeView;->setVisibility(I)V

    .line 66
    :goto_29
    const v1, 0x7f0802bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/StickyButton;

    iput-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mDoneButton:Lcom/airbnb/android/views/StickyButton;

    .line 67
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mDoneButton:Lcom/airbnb/android/views/StickyButton;

    const v2, 0x7f0e07b4

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 69
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->setupReservationView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mDoneButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v2, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackCompleteStartView(Lcom/airbnb/android/utils/Strap;)V

    .line 83
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_54
    move-exception v1

    const/4 v1, 0x0

    :try_start_56
    const-string/jumbo v2, "VerifiedIdCompletedFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_5d} :catch_54

    goto :goto_9

    .line 63
    .restart local v0    # "view":Landroid/view/View;
    :cond_5e
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/CircleBadgeView;->initializeAsActiveBadge()V

    goto :goto_29
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public setReservation(Lcom/airbnb/android/models/Reservation;)V
    .registers 2
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 88
    return-void
.end method
