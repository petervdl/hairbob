.class public Lcom/airbnb/android/fragments/ROMessageFragment;
.super Lcom/airbnb/android/fragments/CannedMessageFragmentBase;
.source "ROMessageFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;


# static fields
.field private static final MESSAGES_SCROLL_DELAY_MS:I = 0x32

.field public static final TAG_TABLET_MODE:Ljava/lang/String; = "tablet_mode"


# instance fields
.field private mBtnRecommendedListings:Landroid/widget/Button;

.field private mEmptyState:Landroid/widget/TextView;

.field private mLatestStatusPostId:J

.field private mListView:Landroid/widget/ListView;

.field private mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

.field private mMessageThread:Lcom/airbnb/android/models/MessageThread;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOtherUser:Lcom/airbnb/android/models/User;

.field private mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

.field private mRecommendedListingsTracked:Z

.field private mReplyButton:Landroid/view/View;

.field private mReplyContainer:Landroid/view/View;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mTabBarHeight:I

.field private mTopImageHeight:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ROMessageFragment;)Lcom/airbnb/android/interfaces/ROFragmentInterface;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROMessageFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ROMessageFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROMessageFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROMessageFragment;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ROMessageFragment;)Lcom/airbnb/android/adapters/ROMessageAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROMessageFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROMessageFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROMessageFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private getOtherUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOtherUser:Lcom/airbnb/android/models/User;

    if-eqz v0, :cond_7

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOtherUser:Lcom/airbnb/android/models/User;

    .line 192
    :goto_6
    return-object v0

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_1b

    .line 189
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOtherUser:Lcom/airbnb/android/models/User;

    .line 192
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOtherUser:Lcom/airbnb/android/models/User;

    goto :goto_6

    .line 189
    :cond_1e
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v0

    goto :goto_19
.end method

.method private isHostMode()Z
    .registers 3

    .prologue
    .line 240
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v1}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 241
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    :goto_a
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v1

    if-nez v1, :cond_22

    :cond_16
    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->isMine(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_22
    const/4 v1, 0x1

    :goto_23
    return v1

    .line 240
    .end local v0    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_24
    const/4 v0, 0x0

    goto :goto_a

    .line 241
    .restart local v0    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_26
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/ROMessageFragment;
    .registers 1

    .prologue
    .line 81
    new-instance v0, Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;-><init>()V

    .line 82
    .local v0, "frag":Lcom/airbnb/android/fragments/ROMessageFragment;
    return-object v0
.end method

.method private sendMessage(Ljava/lang/String;)V
    .registers 12
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 345
    iget-object v6, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v6, :cond_3d

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v6}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v0

    .line 346
    .local v0, "threadId":J
    :goto_c
    iget-object v6, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v6, :cond_3f

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v6}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v6

    if-eqz v6, :cond_3f

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v4}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    .line 350
    .local v2, "listingId":J
    :goto_22
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/airbnb/android/fragments/ROMessageFragment;->createAndShowNewMessage(Ljava/lang/String;Z)Lcom/airbnb/android/models/Post;

    move-result-object v8

    .line 351
    .local v8, "newMessage":Lcom/airbnb/android/models/Post;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v4

    new-instance v7, Lcom/airbnb/android/fragments/ROMessageFragment$5;

    invoke-direct {v7, p0, v8, p1}, Lcom/airbnb/android/fragments/ROMessageFragment$5;-><init>(Lcom/airbnb/android/fragments/ROMessageFragment;Lcom/airbnb/android/models/Post;Ljava/lang/String;)V

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->forMessage(JJJLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    move-result-object v9

    .line 378
    .local v9, "request":Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    invoke-virtual {v9}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->execute()V

    .line 379
    return-void

    .end local v0    # "threadId":J
    .end local v2    # "listingId":J
    .end local v8    # "newMessage":Lcom/airbnb/android/models/Post;
    .end local v9    # "request":Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    :cond_3d
    move-wide v0, v4

    .line 345
    goto :goto_c

    .restart local v0    # "threadId":J
    :cond_3f
    move-wide v2, v4

    .line 346
    goto :goto_22
.end method

.method private setupListViewTopBottomPadding(Landroid/widget/ListView;)V
    .registers 7
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v4, -0x1

    .line 202
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mTopImageHeight:I

    invoke-direct {v1, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 205
    .local v1, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 208
    new-instance v0, Landroid/widget/FrameLayout;

    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 209
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mTabBarHeight:I

    invoke-direct {v1, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 210
    .restart local v1    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 212
    return-void
.end method

.method private setupMessageViews()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Post;>;"
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->isHostMode()Z

    move-result v1

    .line 217
    .local v1, "hostMode":Z
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    if-eqz v3, :cond_44

    .line 218
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v3, :cond_19

    .line 219
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ROMessageAdapter;->clear()V

    .line 220
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v3}, Lcom/airbnb/android/models/MessageThread;->getPosts()Ljava/util/List;

    move-result-object v2

    .line 222
    :cond_19
    if-eqz v2, :cond_48

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_48

    .line 223
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/adapters/ROMessageAdapter;->addAll(Ljava/util/Collection;)V

    .line 224
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getLatestStatusPostId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mLatestStatusPostId:J

    .line 225
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mEmptyState:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    :goto_35
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOtherUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/ROMessageAdapter;->setOtherUser(Lcom/airbnb/android/models/User;)V

    .line 232
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->setupRecommendedListingsIfNeeded()V

    .line 234
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ROMessageAdapter;->notifyDataSetChanged()V

    .line 236
    :cond_44
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ROMessageFragment;->loadCannedMessages(Z)V

    .line 237
    return-void

    .line 227
    :cond_48
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mEmptyState:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    if-eqz v1, :cond_67

    const v0, 0x7f0e0684

    .line 229
    .local v0, "defaultMsgId":I
    :goto_52
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mEmptyState:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOtherUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v0, v4}, Lcom/airbnb/android/fragments/ROMessageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 228
    .end local v0    # "defaultMsgId":I
    :cond_67
    const v0, 0x7f0e0683

    goto :goto_52
.end method

.method private setupRecommendedListingsIfNeeded()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    .line 246
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 247
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    :goto_b
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->isHostMode()Z

    move-result v3

    if-nez v3, :cond_28

    const-string/jumbo v3, "guest"

    const-string/jumbo v5, "mobile_recommended_listings_relaunch"

    const-string/jumbo v6, "enabled"

    invoke-static {v3, v5, v6}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 270
    :cond_28
    :goto_28
    return-void

    .line 246
    .end local v0    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_29
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v3}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    goto :goto_b

    :cond_34
    const/4 v0, 0x0

    goto :goto_b

    .line 251
    .restart local v0    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_36
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-static {v3, v5}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getConsolidatedReservationStatus(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;)Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v2

    .line 252
    .local v2, "status":Lcom/airbnb/android/models/ReservationStatus;
    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/ROMessageFragment;->shouldShowRecommendedListings(Lcom/airbnb/android/models/ReservationStatus;)Z

    move-result v1

    .line 253
    .local v1, "showRecommendedListings":Z
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mBtnRecommendedListings:Landroid/widget/Button;

    if-nez v1, :cond_78

    move v3, v4

    :goto_47
    invoke-static {v5, v3}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 254
    if-eqz v1, :cond_28

    .line 255
    iget-boolean v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mRecommendedListingsTracked:Z

    if-nez v3, :cond_6d

    .line 257
    const-string/jumbo v3, "show_recommendations_btn"

    const-string/jumbo v5, "impression"

    const-string/jumbo v6, "recommendations_btn"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    const-string/jumbo v8, "status"

    invoke-virtual {v2}, Lcom/airbnb/android/models/ReservationStatus;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackRORecommendationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 258
    iput-boolean v4, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mRecommendedListingsTracked:Z

    .line 260
    :cond_6d
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mBtnRecommendedListings:Landroid/widget/Button;

    new-instance v4, Lcom/airbnb/android/fragments/ROMessageFragment$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/airbnb/android/fragments/ROMessageFragment$1;-><init>(Lcom/airbnb/android/fragments/ROMessageFragment;Lcom/airbnb/android/models/ReservationStatus;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28

    .line 253
    :cond_78
    const/4 v3, 0x0

    goto :goto_47
.end method

.method private setupReplyInput(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 287
    const v0, 0x7f080489

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReplyContainer:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/ROMessageFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROMessageFragment$2;-><init>(Lcom/airbnb/android/fragments/ROMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 301
    const v0, 0x7f08048d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReplyButton:Landroid/view/View;

    .line 302
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->updateReplyButton()V

    .line 304
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->setupCannedMessageButton()V

    .line 306
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/ROMessageFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROMessageFragment$3;-><init>(Lcom/airbnb/android/fragments/ROMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 322
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReplyButton:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/fragments/ROMessageFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROMessageFragment$4;-><init>(Lcom/airbnb/android/fragments/ROMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    return-void
.end method

.method private shouldShowRecommendedListings(Lcom/airbnb/android/models/ReservationStatus;)Z
    .registers 3
    .param p1, "currStatus"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 273
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Denied:Lcom/airbnb/android/models/ReservationStatus;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Cancelled:Lcom/airbnb/android/models/ReservationStatus;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Timedout:Lcom/airbnb/android/models/ReservationStatus;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->NotPossible:Lcom/airbnb/android/models/ReservationStatus;

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public adjustScroll(I)V
    .registers 4
    .param p1, "tabBarTop"    # I

    .prologue
    const/4 v1, 0x1

    .line 279
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt v0, v1, :cond_12

    .line 284
    :cond_11
    :goto_11
    return-void

    .line 283
    :cond_12
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_11
.end method

.method public clearReplyInputTextFocus()V
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    .line 409
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 411
    :cond_9
    return-void
.end method

.method public createAndShowNewMessage(Ljava/lang/String;Z)Lcom/airbnb/android/models/Post;
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "postAuthorIsMe"    # Z

    .prologue
    .line 385
    if-eqz p2, :cond_43

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    :goto_12
    invoke-static {p1, v1, v2, p2}, Lcom/airbnb/android/models/Post;->createTransientPost(Ljava/lang/String;JZ)Lcom/airbnb/android/models/Post;

    move-result-object v0

    .line 387
    .local v0, "newPost":Lcom/airbnb/android/models/Post;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/adapters/ROMessageAdapter;->insert(Ljava/lang/Object;I)V

    .line 389
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mEmptyState:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROMessageAdapter;->notifyDataSetChanged()V

    .line 393
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->scrollToBottom()V

    .line 396
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->setRespondNowButtonVisibility(Z)V

    .line 397
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->isRespondNowButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 398
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 400
    :cond_42
    return-object v0

    .line 385
    .end local v0    # "newPost":Lcom/airbnb/android/models/Post;
    :cond_43
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    goto :goto_12
.end method

.method public getReplyContainerPositionOnScreen()[I
    .registers 3

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "location":[I
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReplyContainer:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 473
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 474
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReplyContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 476
    :cond_d
    return-object v0
.end method

.method public getRespondNowButtonHeight()I
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->isRespondNowButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getStickyButtonHeight()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method getTrackingPage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 427
    const-string/jumbo v0, "messaging"

    return-object v0
.end method

.method isInputTextClearable()Z
    .registers 2

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onAttach(Landroid/app/Activity;)V

    .line 171
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/airbnb/android/interfaces/ROFragmentInterface;

    if-nez v0, :cond_2b

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parent fragment must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2b
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ROFragmentInterface;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    .line 176
    return-void
.end method

.method onCannedMessageButtonClicked(Z)V
    .registers 2
    .param p1, "showCannedMessages"    # Z

    .prologue
    .line 415
    if-eqz p1, :cond_5

    .line 416
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->scrollToBottom()V

    .line 418
    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f08048e

    const/4 v9, 0x0

    .line 101
    const v5, 0x7f0301b4

    invoke-virtual {p1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, "view":Landroid/view/View;
    invoke-static {p0, v4}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 104
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v5}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->isWideMode()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 105
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v5}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getListViewOnScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 106
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v5}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getHeaderImageHeight()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mTopImageHeight:I

    .line 107
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v5}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getTabBarHeight()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mTabBarHeight:I

    .line 110
    :cond_2e
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v5}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 111
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v5}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getMessageThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    .line 112
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v5}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOtherUser:Lcom/airbnb/android/models/User;

    .line 114
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 116
    .local v1, "otherUser":Lcom/airbnb/android/models/User;
    new-instance v5, Lcom/airbnb/android/adapters/ROMessageAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v8}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v8

    invoke-direct {v5, v6, v7, v1, v8}, Lcom/airbnb/android/adapters/ROMessageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/Listing;)V

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    .line 117
    iget-wide v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mLatestStatusPostId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_6f

    .line 118
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    iget-wide v6, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mLatestStatusPostId:J

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/android/adapters/ROMessageAdapter;->setLatestStatusPostId(J)V

    .line 121
    :cond_6f
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mEmptyState:Landroid/widget/TextView;

    .line 122
    const v5, 0x7f08048c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    .line 124
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v5}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getInputMessage()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "savedText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_93

    .line 126
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_93
    const v5, 0x7f080488

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/LoaderListView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 130
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    .line 131
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v5}, Lcom/airbnb/android/fragments/ROMessageFragment;->setupListViewTopBottomPadding(Landroid/widget/ListView;)V

    .line 137
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0301b5

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "emptyStateFooter":Landroid/view/View;
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mEmptyState:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001d

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, "recommendListingsFooter":Landroid/view/View;
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 144
    const v5, 0x7f080067

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mBtnRecommendedListings:Landroid/widget/Button;

    .line 145
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mBtnRecommendedListings:Landroid/widget/Button;

    const v6, 0x7f0e0804

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mBtnRecommendedListings:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 152
    invoke-virtual {p0, v4, v1}, Lcom/airbnb/android/fragments/ROMessageFragment;->setupCannedMessageAdapter(Landroid/view/View;Lcom/airbnb/android/models/User;)V

    .line 154
    invoke-direct {p0, v4}, Lcom/airbnb/android/fragments/ROMessageFragment;->setupReplyInput(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/ROMessageFragment;->setupGlobalLayoutListener(Landroid/view/View;)V

    .line 158
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v5, :cond_116

    .line 159
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->setupMessageViews()V

    .line 162
    :cond_116
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->scrollToBottom()V

    .line 164
    return-object v4
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 180
    invoke-super {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->saveInputMessage(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public scrollToBottom()V
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_e

    .line 433
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/airbnb/android/fragments/ROMessageFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROMessageFragment$6;-><init>(Lcom/airbnb/android/fragments/ROMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 466
    :cond_e
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 4
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->setUserVisibleHint(Z)V

    .line 89
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_13

    .line 90
    if-eqz p1, :cond_14

    .line 91
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->scrollToBottom()V

    .line 97
    :cond_13
    :goto_13
    return-void

    .line 94
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_13
.end method

.method protected toggleCannedMessages()Z
    .registers 4

    .prologue
    .line 481
    invoke-super {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->toggleCannedMessages()Z

    move-result v0

    .line 483
    .local v0, "show":Z
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->isCannedMessagesHidden()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->setRespondNowButtonVisibility(Z)V

    .line 485
    return v0
.end method

.method public updateReplyButton()V
    .registers 3

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMessageFragment;->hasUserInput()Z

    move-result v0

    .line 338
    .local v0, "hasText":Z
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mReplyButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    if-nez v0, :cond_10

    .line 340
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->notifyDataSetChanged()V

    .line 342
    :cond_10
    return-void
.end method
