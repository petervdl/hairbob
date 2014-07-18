.class public Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;
.super Landroid/support/v4/app/Fragment;
.source "WelcomeScreenFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final RESERVATION_EXTRA:Ljava/lang/String; = "reservation"

.field private static final START_COMPLETE_PROFILE_EXTRA:Ljava/lang/String; = "start_complete_profile"


# instance fields
.field private mListingHeroImage:Landroid/widget/ImageView;

.field private mListingNameTextView:Landroid/widget/TextView;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mReservationContainer:Landroid/widget/FrameLayout;

.field private mReservationDescriptionTextView:Landroid/widget/TextView;

.field private mStartCompleteProfile:Z

.field private mVerifyMeButton:Lcom/airbnb/android/views/StickyButton;

.field private mWelcomePromptHeaderTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;)Lcom/airbnb/android/views/StickyButton;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mVerifyMeButton:Lcom/airbnb/android/views/StickyButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

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

    .line 174
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0e013d

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "format":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v3

    .line 176
    .local v3, "guestsCount":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    .line 177
    .local v4, "numGuests":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "checkInDate":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "checkOutDate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e07e6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v1, v7, v10

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static newInstance(ZLcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;
    .registers 5
    .param p0, "startCompleteProfile"    # Z
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 54
    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;-><init>()V

    .line 56
    .local v1, "fragment":Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "start_complete_profile"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    const-string/jumbo v2, "reservation"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method

.method private setupReservationView(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    const v3, 0x7f0802bb

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservationContainer:Landroid/widget/FrameLayout;

    .line 131
    const v3, 0x7f0802bc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mListingHeroImage:Landroid/widget/ImageView;

    .line 132
    const v3, 0x7f0800a5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mListingNameTextView:Landroid/widget/TextView;

    .line 133
    const v3, 0x7f0802bd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservationDescriptionTextView:Landroid/widget/TextView;

    .line 134
    const v3, 0x7f0802ce

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mWelcomePromptHeaderTextView:Landroid/widget/TextView;

    .line 136
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v3, :cond_8b

    .line 137
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservationContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 141
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mListingNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservationDescriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getReservationDetailsText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mWelcomePromptHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0e07f8

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$3;-><init>(Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;)V

    .line 167
    .local v1, "listener":Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    sget-object v0, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 168
    .local v0, "imageLoader":Lcom/android/volley/toolbox/ImageLoader;
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 170
    .end local v0    # "imageLoader":Lcom/android/volley/toolbox/ImageLoader;
    .end local v1    # "listener":Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8b
    return-void
.end method


# virtual methods
.method public bitmapBlurComplete(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 184
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mListingHeroImage:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mListingHeroImage:Landroid/widget/ImageView;

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

    .line 192
    .local v0, "gradientHeight":I
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 194
    .local v2, "shade":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 196
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mListingHeroImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservationContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservationContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mListingHeroImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 200
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mListingHeroImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    .local v1, "heroImageViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 202
    return-void
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 206
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v5, "WelcomeScreenFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_80

    .line 71
    :goto_9
    const v4, 0x7f0300fa

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "start_complete_profile"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mStartCompleteProfile:Z

    .line 74
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "reservation"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Reservation;

    iput-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 76
    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-nez v4, :cond_44

    .line 77
    const v4, 0x7f0802cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 78
    .local v1, "fragmentContent":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    .end local v1    # "fragmentContent":Landroid/widget/LinearLayout;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_44
    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->setupReservationView(Landroid/view/View;)V

    .line 84
    const v4, 0x7f0802d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    .local v0, "faqText":Landroid/widget/TextView;
    new-instance v4, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v4, 0x7f0802d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/StickyButton;

    iput-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mVerifyMeButton:Lcom/airbnb/android/views/StickyButton;

    .line 95
    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mVerifyMeButton:Lcom/airbnb/android/views/StickyButton;

    const v5, 0x7f0e07f6

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 96
    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mVerifyMeButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v5, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$2;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackWelcomeStartView(Lcom/airbnb/android/utils/Strap;)V

    .line 109
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v3

    .line 4294967295
    .end local v0    # "faqText":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :catch_80
    move-exception v4

    const/4 v4, 0x0

    :try_start_82
    const-string/jumbo v5, "WelcomeScreenFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_89} :catch_80

    goto :goto_9
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 116
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mVerifyMeButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 121
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mStartCompleteProfile:Z

    if-eqz v1, :cond_1e

    .line 122
    iput-boolean v3, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mStartCompleteProfile:Z

    .line 123
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->mVerifyMeButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    .line 125
    .local v0, "activity":Lcom/airbnb/android/activities/VerifiedIdActivity;
    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showNextStep()V

    .line 127
    .end local v0    # "activity":Lcom/airbnb/android/activities/VerifiedIdActivity;
    :cond_1e
    return-void
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

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method
