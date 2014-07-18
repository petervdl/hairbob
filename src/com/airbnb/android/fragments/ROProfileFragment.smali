.class public Lcom/airbnb/android/fragments/ROProfileFragment;
.super Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;
.source "ROProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ROProfileFragment$7;,
        Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAboutTextView:Lcom/airbnb/android/views/GroupedCell;

.field private mAcceptancePercentageTextView:Landroid/widget/TextView;

.field private mFragmentView:Landroid/view/View;

.field private mFullName:Landroid/widget/TextView;

.field private mGroupsTextView:Lcom/airbnb/android/views/GroupedCell;

.field private mHostPanel:Landroid/widget/LinearLayout;

.field private mListingsLayout:Landroid/widget/LinearLayout;

.field private mListingsList:Lcom/airbnb/android/views/LinearListView;

.field private mListingsRequest:Lcom/airbnb/android/requests/MySpacesRequest;

.field private mListingsTitle:Landroid/widget/TextView;

.field private mMessageThread:Lcom/airbnb/android/models/MessageThread;

.field private mMonthYearSdf:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private mProfileContentView:Landroid/widget/LinearLayout;

.field private mProfileDetailsFragment:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

.field private mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mReservationListing:Lcom/airbnb/android/models/Listing;

.field private mResponsePercentageTextView:Landroid/widget/TextView;

.field private mSchoolTextView:Lcom/airbnb/android/views/GroupedCell;

.field private mUser:Lcom/airbnb/android/models/User;

.field private mUserFrom:Landroid/widget/TextView;

.field private mUserInfoLayout:Landroid/widget/LinearLayout;

.field private mUserJoined:Landroid/widget/TextView;

.field private mUserProfileContainer:Landroid/widget/LinearLayout;

.field private mWorkTextView:Lcom/airbnb/android/views/GroupedCell;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/ROProfileFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ROProfileFragment;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROProfileFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROProfileFragment;->updateListingsHelper(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ROProfileFragment;)Lcom/airbnb/android/models/User;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROProfileFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ROProfileFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROProfileFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ROProfileFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROProfileFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserProfileContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private drawUser(Lcom/airbnb/android/models/User;)V
    .registers 9
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 199
    :cond_6
    :goto_6
    return-void

    .line 170
    :cond_7
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    if-nez v0, :cond_16

    .line 171
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot have null user, and need to call setUserType first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_28

    .line 175
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e052b

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ROProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    .line 178
    :cond_28
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->isSingleTab()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/ROProfileFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROProfileFragment$1;-><init>(Lcom/airbnb/android/fragments/ROProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    :cond_43
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->updateInfoAndAbout()V

    .line 194
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->updateListings()V

    .line 196
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileDetailsFragment:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    if-eqz v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileDetailsFragment:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getReservationId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getThreadId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->setUser(Lcom/airbnb/android/models/User;JJLcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;)V

    goto :goto_6
.end method

.method public static getUserType(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;)Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "messageThread"    # Lcom/airbnb/android/models/MessageThread;
    .param p3, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 343
    sget-object v2, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->ALL:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    .line 344
    .local v2, "type":Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    if-eqz p1, :cond_11

    .line 345
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 346
    sget-object v2, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->GUEST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    :cond_c
    :goto_c
    move-object v3, v2

    .line 368
    .end local v2    # "type":Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    .local v3, "type":Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    :goto_d
    return-object v3

    .line 348
    .end local v3    # "type":Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    .restart local v2    # "type":Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    :cond_e
    sget-object v2, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->HOST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    goto :goto_c

    .line 352
    :cond_11
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 353
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_35

    .line 354
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_35

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_35

    .line 355
    sget-object v2, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->SELF:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    move-object v3, v2

    .line 356
    .end local v2    # "type":Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    .restart local v3    # "type":Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    goto :goto_d

    .line 360
    .end local v3    # "type":Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    .restart local v2    # "type":Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    :cond_35
    if-eqz p2, :cond_c

    .line 362
    invoke-virtual {p2}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    .line 363
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    if-eqz v1, :cond_c

    .line 364
    invoke-virtual {v1, p0}, Lcom/airbnb/android/models/Listing;->isMine(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_46

    sget-object v2, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->GUEST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    :goto_45
    goto :goto_c

    :cond_46
    sget-object v2, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->HOST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    goto :goto_45
.end method

.method private isSelf()Z
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->isMyProfile()Z

    move-result v0

    return v0
.end method

.method private pushProfileContentToTopIfNeeded()V
    .registers 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 382
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/fragments/ROProfileFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROProfileFragment$6;-><init>(Lcom/airbnb/android/fragments/ROProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 396
    :cond_e
    return-void
.end method

.method private setUserType(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;)V
    .registers 5
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "messageThread"    # Lcom/airbnb/android/models/MessageThread;
    .param p3, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/airbnb/android/fragments/ROProfileFragment;->getUserType(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;)Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    .line 374
    return-void
.end method

.method private setupProfile()V
    .registers 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/android/fragments/ROProfileFragment;->setUserType(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;)V

    .line 156
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ROProfileFragment;->drawUser(Lcom/airbnb/android/models/User;)V

    .line 160
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->pushProfileContentToTopIfNeeded()V

    .line 162
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 163
    return-void
.end method

.method private updateInfoAndAbout()V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 271
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    .line 272
    .local v0, "userToUse":Lcom/airbnb/android/models/User;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 274
    :cond_22
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/Listing;->isMine(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_115

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 276
    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFullName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v3, 0x7f080493

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, "verifiedIdLogo":Landroid/view/View;
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->isVerifiedId()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 281
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->isVerifiedId()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 282
    new-instance v2, Lcom/airbnb/android/fragments/ROProfileFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ROProfileFragment$4;-><init>(Lcom/airbnb/android/fragments/ROProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_5f
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 292
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserFrom:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :goto_70
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserJoined:Landroid/widget/TextView;

    const v3, 0x7f0e0499

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/ROProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getListingsCount()I

    move-result v2

    if-lez v2, :cond_af

    .line 300
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mHostPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mAcceptancePercentageTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getAcceptanceRate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mResponsePercentageTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getResponseRate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_af
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 307
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mAboutTextView:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v2, v9}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 325
    :goto_c0
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getWork()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 326
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mWorkTextView:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v2, v7}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 327
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mWorkTextView:Lcom/airbnb/android/views/GroupedCell;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getWork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 330
    :cond_dc
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getGroups()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f8

    .line 331
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mGroupsTextView:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v2, v7}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 332
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mGroupsTextView:Lcom/airbnb/android/views/GroupedCell;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getGroups()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 335
    :cond_f8
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getSchool()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_114

    .line 336
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mSchoolTextView:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v2, v7}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 337
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mSchoolTextView:Lcom/airbnb/android/views/GroupedCell;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getSchool()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 340
    :cond_114
    return-void

    .line 274
    .end local v1    # "verifiedIdLogo":Landroid/view/View;
    :cond_115
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v0

    goto/16 :goto_38

    .line 294
    .restart local v1    # "verifiedIdLogo":Landroid/view/View;
    :cond_11d
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserFrom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_70

    .line 309
    :cond_12a
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mAboutTextView:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v2, v7}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 310
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mAboutTextView:Lcom/airbnb/android/views/GroupedCell;

    const v3, 0x7f0e002e

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/ROProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/GroupedCell;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mAboutTextView:Lcom/airbnb/android/views/GroupedCell;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mAboutTextView:Lcom/airbnb/android/views/GroupedCell;

    new-instance v3, Lcom/airbnb/android/fragments/ROProfileFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ROProfileFragment$5;-><init>(Lcom/airbnb/android/fragments/ROProfileFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_c0
.end method

.method private updateListings()V
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getListingsCount()I

    move-result v0

    if-lez v0, :cond_25

    .line 203
    new-instance v0, Lcom/airbnb/android/requests/MySpacesRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/airbnb/android/fragments/ROProfileFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ROProfileFragment$2;-><init>(Lcom/airbnb/android/fragments/ROProfileFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/MySpacesRequest;-><init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsRequest:Lcom/airbnb/android/requests/MySpacesRequest;

    .line 216
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsRequest:Lcom/airbnb/android/requests/MySpacesRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/MySpacesRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 222
    :goto_24
    return-void

    .line 220
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ROProfileFragment;->updateListingsHelper(Ljava/util/List;)V

    goto :goto_24
.end method

.method private updateListingsHelper(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    const/4 v10, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_8

    .line 261
    :goto_7
    return-void

    .line 230
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v2, "listedListings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Listing;

    .line 232
    .local v3, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/Listing;->isMine(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 233
    :cond_2d
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 238
    .end local v3    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_31
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservationListing:Lcom/airbnb/android/models/Listing;

    if-eqz v4, :cond_49

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    if-eqz v4, :cond_49

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    sget-object v5, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->HOST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    if-ne v4, v5, :cond_49

    .line 239
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservationListing:Lcom/airbnb/android/models/Listing;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservationListing:Lcom/airbnb/android/models/Listing;

    invoke-interface {v2, v10, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 243
    :cond_49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_57

    .line 244
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 249
    :cond_57
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d001a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    new-instance v0, Lcom/airbnb/android/adapters/ListingsRowAdapter;

    sget-object v4, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_REVIEW_COUNT_AND_PRICE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-direct {v0, v2, v4}, Lcom/airbnb/android/adapters/ListingsRowAdapter;-><init>(Ljava/util/List;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V

    .line 252
    .local v0, "adapter":Lcom/airbnb/android/adapters/ListingsRowAdapter;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsList:Lcom/airbnb/android/views/LinearListView;

    invoke-virtual {v4, v0}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsList:Lcom/airbnb/android/views/LinearListView;

    new-instance v5, Lcom/airbnb/android/fragments/ROProfileFragment$3;

    invoke-direct {v5, p0, v0}, Lcom/airbnb/android/fragments/ROProfileFragment$3;-><init>(Lcom/airbnb/android/fragments/ROProfileFragment;Lcom/airbnb/android/adapters/ListingsRowAdapter;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public getFragmentLayout()I
    .registers 2

    .prologue
    .line 400
    const v0, 0x7f0301b6

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const v2, 0x7f08049e

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getMessageThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    :goto_2d
    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mReservationListing:Lcom/airbnb/android/models/Listing;

    .line 104
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f08048f

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileContentView:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f080499

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mAboutTextView:Lcom/airbnb/android/views/GroupedCell;

    .line 108
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f08049b

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mWorkTextView:Lcom/airbnb/android/views/GroupedCell;

    .line 109
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f08049c

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mSchoolTextView:Lcom/airbnb/android/views/GroupedCell;

    .line 110
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f08049d

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mGroupsTextView:Lcom/airbnb/android/views/GroupedCell;

    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileDetailsFragment:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    .line 113
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->shouldShowROProfileDetailsInProfile()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 114
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileDetailsFragment:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    if-nez v0, :cond_9f

    .line 115
    invoke-static {}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->newInstance()Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileDetailsFragment:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileDetailsFragment:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 126
    :cond_9f
    :goto_9f
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0803f9

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsLayout:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0803fc

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsList:Lcom/airbnb/android/views/LinearListView;

    .line 128
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0803fb

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mListingsTitle:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f080491

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserInfoLayout:Landroid/widget/LinearLayout;

    .line 132
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserInfoLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f080492

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFullName:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserInfoLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f080494

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserFrom:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserInfoLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f080495

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserJoined:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f080496

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mHostPanel:Landroid/widget/LinearLayout;

    .line 138
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mHostPanel:Landroid/widget/LinearLayout;

    const v1, 0x7f080497

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mAcceptancePercentageTextView:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mHostPanel:Landroid/widget/LinearLayout;

    const v1, 0x7f080498

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mResponsePercentageTextView:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f080490

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUserProfileContainer:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    if-nez v0, :cond_137

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    :cond_137
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    if-eqz v0, :cond_13e

    .line 148
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->setupProfile()V

    .line 151
    :cond_13e
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    return-object v0

    .line 103
    :cond_141
    const/4 v0, 0x0

    goto/16 :goto_2d

    .line 119
    :cond_144
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileDetailsFragment:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    if-eqz v0, :cond_155

    .line 120
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mProfileDetailsFragment:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 122
    :cond_155
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9f
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->onDestroy()V

    .line 93
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public profileUpdated(Lcom/airbnb/android/events/ProfileUpdatedEvent;)V
    .registers 7
    .param p1, "ev"    # Lcom/airbnb/android/events/ProfileUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->isSelf()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 410
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 411
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    invoke-virtual {p1}, Lcom/airbnb/android/events/ProfileUpdatedEvent;->getSection()Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    move-result-object v2

    .line 412
    .local v2, "updatedSection":Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    const/4 v1, 0x0

    .line 414
    .local v1, "needsUpdate":Z
    sget-object v3, Lcom/airbnb/android/fragments/ROProfileFragment$7;->$SwitchMap$com$airbnb$android$interfaces$EditProfileInterface$ProfileSection:[I

    invoke-virtual {v2}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_54

    .line 432
    :goto_22
    if-eqz v1, :cond_27

    .line 433
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROProfileFragment;->updateInfoAndAbout()V

    .line 436
    .end local v0    # "currentUser":Lcom/airbnb/android/models/User;
    .end local v1    # "needsUpdate":Z
    .end local v2    # "updatedSection":Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    :cond_27
    return-void

    .line 416
    .restart local v0    # "currentUser":Lcom/airbnb/android/models/User;
    .restart local v1    # "needsUpdate":Z
    .restart local v2    # "updatedSection":Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    :pswitch_28
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/User;->setAbout(Ljava/lang/String;)V

    .line 417
    const/4 v1, 0x1

    .line 418
    goto :goto_22

    .line 420
    :pswitch_33
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getSchool()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/User;->setSchool(Ljava/lang/String;)V

    .line 421
    const/4 v1, 0x1

    .line 422
    goto :goto_22

    .line 424
    :pswitch_3e
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getWork()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/User;->setWork(Ljava/lang/String;)V

    .line 425
    const/4 v1, 0x1

    .line 426
    goto :goto_22

    .line 428
    :pswitch_49
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/User;->setLocation(Ljava/lang/String;)V

    .line 429
    const/4 v1, 0x1

    goto :goto_22

    .line 414
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_28
        :pswitch_33
        :pswitch_3e
        :pswitch_49
    .end packed-switch
.end method
