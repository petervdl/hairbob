.class public Lcom/airbnb/android/fragments/ProfileDetailsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ProfileDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ProfileDetailsFragment$7;
    }
.end annotation


# static fields
.field private static final TAG_CONNECTIONS:Ljava/lang/String; = "social_connections"


# instance fields
.field private mMonthYearSdf:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private mNoVerificationsText:Landroid/widget/TextView;

.field private mReferencesLayout:Landroid/widget/LinearLayout;

.field private mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

.field private mReservationId:J

.field private mReviewLayout:Landroid/widget/LinearLayout;

.field private mSocialConnectionsCardHolder:Landroid/widget/FrameLayout;

.field private mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

.field private mThreadId:J

.field private mUser:Lcom/airbnb/android/models/User;

.field private mVerificationTitle:Landroid/widget/TextView;

.field private mVerificationsGroup:Landroid/view/View;

.field private mVerificationsListView:Lcom/airbnb/android/views/LinearListView;

.field private mVerifiedIdLogo:Landroid/widget/ImageView;

.field private mVerifyYourIdentity:Landroid/widget/TextView;

.field private mVerifyYourIdentityInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ProfileDetailsFragment;Lcom/airbnb/android/requests/SocialConnectionsRequest;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfileDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/SocialConnectionsRequest;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->updateSocialConnections(Lcom/airbnb/android/requests/SocialConnectionsRequest;)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsCardHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/requests/SocialConnectionsRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/models/User;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mReservationId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mThreadId:J

    return-wide v0
.end method

.method private drawUser()V
    .registers 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->fetchSocialConnectionsIfNeeded()V

    .line 282
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->updateReviews()V

    .line 283
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->updateVerifications()V

    .line 284
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->updateReferences()V

    .line 285
    return-void
.end method

.method private fetchSocialConnectionsIfNeeded()V
    .registers 5

    .prologue
    .line 108
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    sget-object v1, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->SELF:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    if-eqz v0, :cond_2f

    .line 111
    new-instance v0, Lcom/airbnb/android/requests/SocialConnectionsRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/airbnb/android/fragments/ProfileDetailsFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment$2;-><init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/SocialConnectionsRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/SocialConnectionsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 128
    :cond_2f
    return-void
.end method

.method private isSelf()Z
    .registers 6

    .prologue
    .line 288
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 289
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/ProfileDetailsFragment;
    .registers 1

    .prologue
    .line 65
    new-instance v0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;-><init>()V

    return-object v0
.end method

.method private updateReferences()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 234
    iget-object v3, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mReferencesLayout:Landroid/widget/LinearLayout;

    .line 236
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getRecommendationCount()I

    move-result v0

    .line 238
    .local v0, "numReferences":I
    if-lez v0, :cond_ac

    iget-object v4, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getRecentRecommendation()Lcom/airbnb/android/models/Recommendation;

    move-result-object v4

    if-eqz v4, :cond_ac

    .line 240
    const v4, 0x7f080455

    invoke-static {v3, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0021

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v4, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getRecentRecommendation()Lcom/airbnb/android/models/Recommendation;

    move-result-object v1

    .line 244
    .local v1, "reference":Lcom/airbnb/android/models/Recommendation;
    const v4, 0x7f080459

    invoke-static {v3, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getRecommendation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const v4, 0x7f080457

    invoke-static {v3, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getRecommender()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const v4, 0x7f080456

    invoke-static {v3, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getRecommender()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 248
    iget-object v4, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "referenceDate":Ljava/lang/String;
    const v4, 0x7f080458

    invoke-static {v3, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getRelationshipType()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_99

    .end local v2    # "referenceDate":Ljava/lang/String;
    :goto_86
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v4, 0x7f08045a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;-><init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .end local v1    # "reference":Lcom/airbnb/android/models/Recommendation;
    :goto_98
    return-void

    .line 250
    .restart local v1    # "reference":Lcom/airbnb/android/models/Recommendation;
    .restart local v2    # "referenceDate":Ljava/lang/String;
    :cond_99
    const v5, 0x7f0e00a7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getRelationshipType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_86

    .line 265
    .end local v1    # "reference":Lcom/airbnb/android/models/Recommendation;
    .end local v2    # "referenceDate":Ljava/lang/String;
    :cond_ac
    iget-object v4, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mReferencesLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_98
.end method

.method private updateReviews()V
    .registers 12

    .prologue
    .line 152
    iget-object v4, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mReviewLayout:Landroid/widget/LinearLayout;

    .line 153
    .local v4, "view":Landroid/view/View;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v5, 0x7f0e052c

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "mShortMonthYearSdf":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getRevieweeCount()I

    move-result v1

    .line 156
    .local v1, "numReviews":I
    if-lez v1, :cond_99

    iget-object v5, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getRecentReview()Lcom/airbnb/android/models/Review;

    move-result-object v5

    if-eqz v5, :cond_99

    .line 157
    const v5, 0x7f080455

    invoke-static {v4, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0022

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v5, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getRecentReview()Lcom/airbnb/android/models/Review;

    move-result-object v2

    .line 161
    .local v2, "review":Lcom/airbnb/android/models/Review;
    const v5, 0x7f080459

    invoke-static {v4, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getPublicFeedback()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v5, 0x7f080457

    invoke-static {v4, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReviewer()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v5, 0x7f080456

    invoke-static {v4, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReviewer()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 165
    invoke-virtual {v2, v0}, Lcom/airbnb/android/models/Review;->getFormattedCreationDate(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "reviewDateString":Ljava/lang/String;
    const v5, 0x7f080458

    invoke-static {v4, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v5, 0x7f08045a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;-><init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .end local v2    # "review":Lcom/airbnb/android/models/Review;
    .end local v3    # "reviewDateString":Ljava/lang/String;
    :goto_98
    return-void

    .line 191
    :cond_99
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_98
.end method

.method private updateSocialConnections(Lcom/airbnb/android/requests/SocialConnectionsRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/SocialConnectionsRequest;

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/airbnb/android/requests/SocialConnectionsRequest;->targetUserName:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsCardHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 134
    new-instance v0, Lcom/airbnb/android/views/SocialConnectionsCard;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/airbnb/android/views/SocialConnectionsCard;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/SocialConnectionsRequest;ZZ)V

    .line 135
    .local v0, "connectionsCard":Lcom/airbnb/android/views/SocialConnectionsCard;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsCardHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 136
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsCardHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v1, Lcom/airbnb/android/fragments/ProfileDetailsFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment$3;-><init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/SocialConnectionsCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method private updateVerifications()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 199
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getVerifications()Ljava/util/List;

    move-result-object v1

    .line 201
    .local v1, "verifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerifiedIdLogo:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->isVerifiedId()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 202
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->isVerifiedId()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 203
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerifiedIdLogo:Landroid/widget/ImageView;

    new-instance v3, Lcom/airbnb/android/fragments/ProfileDetailsFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment$5;-><init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :cond_24
    :goto_24
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 221
    :cond_2c
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsListView:Lcom/airbnb/android/views/LinearListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/LinearListView;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mNoVerificationsText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :goto_38
    return-void

    .line 212
    :cond_39
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationTitle:Landroid/widget/TextView;

    const v3, 0x7f0e07ad

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 214
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 215
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerifyYourIdentity:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerifyYourIdentityInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24

    .line 225
    :cond_52
    new-instance v0, Lcom/airbnb/android/adapters/VerificationsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getVerifications()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getVerificationLabels()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/airbnb/android/adapters/VerificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 226
    .local v0, "adapter":Lcom/airbnb/android/adapters/VerificationsAdapter;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsListView:Lcom/airbnb/android/views/LinearListView;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_38
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v1, 0x7f0300d7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0801dc

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsCardHolder:Landroid/widget/FrameLayout;

    .line 76
    const v1, 0x7f0804a0

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mReviewLayout:Landroid/widget/LinearLayout;

    .line 79
    const v1, 0x7f0804a2

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mReferencesLayout:Landroid/widget/LinearLayout;

    .line 82
    const v1, 0x7f0804a1

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsGroup:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsGroup:Landroid/view/View;

    const v2, 0x7f0803b2

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationTitle:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsGroup:Landroid/view/View;

    const v2, 0x7f080445

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerifiedIdLogo:Landroid/widget/ImageView;

    .line 85
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsGroup:Landroid/view/View;

    const v2, 0x7f080449

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerifyYourIdentityInfo:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsGroup:Landroid/view/View;

    const v2, 0x7f080447

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LinearListView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsListView:Lcom/airbnb/android/views/LinearListView;

    .line 87
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsGroup:Landroid/view/View;

    const v2, 0x7f080446

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mNoVerificationsText:Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerificationsGroup:Landroid/view/View;

    const v2, 0x7f080448

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerifyYourIdentity:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mVerifyYourIdentity:Landroid/widget/TextView;

    new-instance v2, Lcom/airbnb/android/fragments/ProfileDetailsFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment$1;-><init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_9c

    .line 97
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0e052b

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    .line 100
    :cond_9c
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    if-eqz v1, :cond_a3

    .line 101
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->drawUser()V

    .line 104
    :cond_a3
    return-object v0
.end method

.method public setUser(Lcom/airbnb/android/models/User;JJLcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;)V
    .registers 8
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .param p2, "reservationId"    # J
    .param p4, "threadId"    # J
    .param p6, "type"    # Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    .prologue
    .line 270
    iput-wide p2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mReservationId:J

    .line 271
    iput-wide p4, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mThreadId:J

    .line 272
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;

    .line 273
    iput-object p6, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    .line 275
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 276
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->drawUser()V

    .line 278
    :cond_11
    return-void
.end method
