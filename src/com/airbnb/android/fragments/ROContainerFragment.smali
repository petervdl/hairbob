.class public Lcom/airbnb/android/fragments/ROContainerFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ROContainerFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/ROFragmentInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ROContainerFragment$20;,
        Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;
    }
.end annotation


# static fields
.field public static final ARG_LAUNCH_STATE:Ljava/lang/String; = "launch_state"

.field private static final ARG_SAVED_MESSAGE:Ljava/lang/String; = "saved_message"

.field private static final ARG_WIDE_MODE:Ljava/lang/String; = "wide_mode"

.field private static final AUTO_DISMISS_POPUP_DELAY:I = 0x1770

.field private static final DETECT_OVERLAP_DELAY:I = 0x1f4

.field private static final DIALOG_ERROR_TAG:Ljava/lang/String; = "error_dialog_tag"

.field private static final DISMISS_LOADER_DELAY:I = 0x1f4

.field public static final INVALID_ID:I = -0x1

.field public static final KEY_CONFIRMATION_CODE:Ljava/lang/String; = "conf_code"

.field public static final KEY_HH_INQUIRY:Ljava/lang/String; = "from_hh"

.field public static final KEY_RESERVATION:Ljava/lang/String; = "reservation"

.field public static final KEY_RESERVATION_ID:Ljava/lang/String; = "res_id"

.field public static final KEY_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field private static final MIN_ITEMS_OVERLAP_DETECTION:I = 0x2

.field private static final REQUEST_ACTIVITY_BOOK_IT:I = 0x2bd

.field private static final REQUEST_ACTIVITY_RESPONSE_INQUIRY:I = 0x2c2

.field private static final REQUEST_ACTIVITY_RESPONSE_RESERVATION:I = 0x2c3

.field private static final REQUEST_ACTIVITY_VERIFY_ID:I = 0x2be

.field private static final REQUEST_CODE_CANCEL:I = 0x2c4

.field private static final REQUEST_CODE_TRY_AGAIN:I = 0x2c5

.field private static final SAVED_STATE_LANDING_IMPRESSION:Ljava/lang/String; = "landing_impression"

.field private static final SAVED_STATE_MESSAGE_THREAD:Ljava/lang/String; = "message_thread"

.field private static final SAVED_STATE_RESERVATION:Ljava/lang/String; = "reservation"

.field private static final SAVED_STATE_SCROLL_POSITION:Ljava/lang/String; = "scroll_position"

.field private static final SAVED_STATE_USER:Ljava/lang/String; = "user"


# instance fields
.field private dismissKeyboardRunnable:Ljava/lang/Runnable;

.field private mConfirmationCode:Ljava/lang/String;

.field private mCurrentTabIsGuestItinerary:Z

.field private mEnableResponseButton:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHelpMenu:Landroid/view/MenuItem;

.field private mHostMode:Z

.field private mImpressionFromLanding:Z

.field private mInputMessage:Ljava/lang/String;

.field private mIsWideMode:Z

.field private mLaunchState:Lcom/airbnb/android/activities/ROActivity$LaunchState;

.field private mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field private mMessageThread:Lcom/airbnb/android/models/MessageThread;

.field private mMessageThreadContainer:Landroid/view/View;

.field private mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

.field private mOpenWithMessageTab:Z

.field private mProfileImage:Lcom/airbnb/android/views/AirImageView;

.field private mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

.field private mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

.field private mROViewPager:Landroid/support/v4/view/ViewPager;

.field private mReceivedPush:Z

.field private mRefreshRO:Z

.field private mReload:Z

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mReservationId:J

.field private mRespondButton:Lcom/airbnb/android/views/StickyButton;

.field private mResponseResult:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

.field private mRestoredState:Z

.field private mRootView:Landroid/view/View;

.field private mScrollViewScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

.field private mScrollY:I

.field private mSmallUserProfileUrl:Ljava/lang/String;

.field private mSquareListingImage:Landroid/graphics/Bitmap;

.field private mTabBarHeight:I

.field private mThreadId:J

.field private mTopImageHeight:I

.field private mUser:Lcom/airbnb/android/models/User;

.field private mUserDisplayName:Ljava/lang/String;

.field private mUserId:J

.field private mUserProfileUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 124
    iput-wide v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserId:J

    iput-wide v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mThreadId:J

    iput-wide v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservationId:J

    .line 132
    sget-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->None:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mResponseResult:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ROContainerFragment$1;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 263
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ROContainerFragment$2;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollViewScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    return-void
.end method

.method private acceptOrDeclineReservationRequest(Landroid/content/Intent;)V
    .registers 10
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 1440
    const-string/jumbo v5, "for_decline"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1441
    .local v0, "forDecline":Z
    const-string/jumbo v5, "guest_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1443
    .local v1, "guestName":Ljava/lang/String;
    if-eqz v0, :cond_2b

    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Denied:Lcom/airbnb/android/models/ReservationStatus;

    .line 1444
    .local v4, "status":Lcom/airbnb/android/models/ReservationStatus;
    :goto_13
    invoke-direct {p0, v4, v1, v7}, Lcom/airbnb/android/fragments/ROContainerFragment;->createProgressDialogIfNeeded(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;Z)V

    .line 1447
    new-instance v2, Lcom/airbnb/android/fragments/ROContainerFragment$17;

    invoke-direct {v2, p0, v4, v1}, Lcom/airbnb/android/fragments/ROContainerFragment$17;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V

    .line 1468
    .local v2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateReservationRequest;>;"
    if-eqz v0, :cond_2e

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v5

    invoke-static {v5, v6, v7, v2}, Lcom/airbnb/android/requests/UpdateReservationRequest;->forDecline(JZLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;

    move-result-object v3

    .line 1471
    .local v3, "request":Lcom/airbnb/android/requests/UpdateReservationRequest;
    :goto_27
    invoke-virtual {v3}, Lcom/airbnb/android/requests/UpdateReservationRequest;->execute()V

    .line 1472
    return-void

    .line 1443
    .end local v2    # "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateReservationRequest;>;"
    .end local v3    # "request":Lcom/airbnb/android/requests/UpdateReservationRequest;
    .end local v4    # "status":Lcom/airbnb/android/models/ReservationStatus;
    :cond_2b
    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    goto :goto_13

    .line 1468
    .restart local v2    # "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateReservationRequest;>;"
    .restart local v4    # "status":Lcom/airbnb/android/models/ReservationStatus;
    :cond_2e
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v5

    invoke-static {v5, v6, v2}, Lcom/airbnb/android/requests/UpdateReservationRequest;->forAccept(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;

    move-result-object v3

    goto :goto_27
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ROContainerFragment;II)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/ROContainerFragment;->dismissKeyboardIfTabBarOverlapsReplyEditText(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/ROContainerFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/ROContainerFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/airbnb/android/fragments/ROContainerFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mSquareListingImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/ROContainerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->setStickyProfileImageAndScroll()V

    return-void
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/ROContainerFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mSmallUserProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/ROContainerFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/airbnb/android/fragments/ROContainerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserProfileUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/airbnb/android/fragments/ROContainerFragment;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/ROContainerFragment;->updateDisplayImage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/airbnb/android/fragments/ROContainerFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->trackROTabImpression(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/airbnb/android/fragments/ROContainerFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->updateImageOnTabUpdated(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/MessageThread;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/ROContainerFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I

    return p1
.end method

.method static synthetic access$2102(Lcom/airbnb/android/fragments/ROContainerFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReload:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/LoaderFrame;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/ROContainerFragment;->showResponseSuccessDialog(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/airbnb/android/fragments/ROContainerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->dismissKeyboardIfTabBarOverlapsReplyEditTextImpl()V

    return-void
.end method

.method static synthetic access$2500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/airbnb/android/fragments/ROContainerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->selectMessageTab()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ROContainerFragment;I)I
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->getScrollY(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ROContainerFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/ROContainerFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->selectTabImpl(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/ROContainerFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->showTabContentFor(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/adapters/ROPagerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/ROContainerFragment;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROContainerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private createProgressDialogIfNeeded(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "status"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "selectMessageTab"    # Z

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    if-nez v1, :cond_23

    .line 1413
    invoke-virtual {p1}, Lcom/airbnb/android/models/ReservationStatus;->getLoadingTitleResId()I

    move-result v0

    .line 1414
    .local v0, "subtitleRes":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    .line 1415
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    new-instance v2, Lcom/airbnb/android/fragments/ROContainerFragment$16;

    invoke-direct {v2, p0, p3}, Lcom/airbnb/android/fragments/ROContainerFragment$16;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Z)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 1437
    .end local v0    # "subtitleRes":I
    :cond_23
    return-void
.end method

.method private disableMessageTabIfNeeded()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 793
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v3, :cond_20

    :cond_a
    move v0, v1

    .line 794
    .local v0, "shouldEnableMessageTab":Z
    :goto_b
    if-nez v0, :cond_1d

    .line 796
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/ROTabBar;->setVisibility(I)V

    .line 797
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v3, v1}, Lcom/airbnb/android/adapters/ROPagerAdapter;->setSingleTab(Z)V

    .line 798
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ROPagerAdapter;->notifyDataSetChanged()V

    .line 800
    :cond_1d
    if-nez v0, :cond_22

    :goto_1f
    return v1

    .end local v0    # "shouldEnableMessageTab":Z
    :cond_20
    move v0, v2

    .line 793
    goto :goto_b

    .restart local v0    # "shouldEnableMessageTab":Z
    :cond_22
    move v1, v2

    .line 800
    goto :goto_1f
.end method

.method private dismissKeyboardIfTabBarOverlapsReplyEditText(II)V
    .registers 7
    .param p1, "visibleItemCount"    # I
    .param p2, "totalItemCount"    # I

    .prologue
    .line 1315
    const/4 v0, 0x1

    if-le p1, v0, :cond_1a

    const/4 v0, 0x2

    if-le p2, v0, :cond_1a

    .line 1316
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->dismissKeyboardRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1b

    .line 1317
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$15;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ROContainerFragment$15;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->dismissKeyboardRunnable:Ljava/lang/Runnable;

    .line 1329
    :goto_11
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->dismissKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1331
    :cond_1a
    return-void

    .line 1327
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->dismissKeyboardRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method private dismissKeyboardIfTabBarOverlapsReplyEditTextImpl()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 1342
    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v7}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getTabHolderScrollingContent()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v6

    .line 1343
    .local v6, "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .line 1345
    .local v0, "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    instance-of v7, v0, Lcom/airbnb/android/fragments/ROMessageFragment;

    if-eqz v7, :cond_20

    move-object v2, v0

    .line 1347
    check-cast v2, Lcom/airbnb/android/fragments/ROMessageFragment;

    .line 1348
    .local v2, "msgFrag":Lcom/airbnb/android/fragments/ROMessageFragment;
    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROMessageFragment;->getReplyContainerPositionOnScreen()[I

    move-result-object v3

    .line 1349
    .local v3, "replyContainerPosition":[I
    if-nez v3, :cond_21

    .line 1364
    .end local v2    # "msgFrag":Lcom/airbnb/android/fragments/ROMessageFragment;
    .end local v3    # "replyContainerPosition":[I
    :cond_20
    :goto_20
    return-void

    .line 1353
    .restart local v2    # "msgFrag":Lcom/airbnb/android/fragments/ROMessageFragment;
    .restart local v3    # "replyContainerPosition":[I
    :cond_21
    aget v4, v3, v8

    .line 1355
    .local v4, "replyContainerY":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 1356
    .local v1, "location":[I
    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v7, v1}, Lcom/airbnb/android/views/ROTabBar;->getLocationOnScreen([I)V

    .line 1357
    aget v5, v1, v8

    .line 1360
    .local v5, "stickBarY":I
    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v7}, Lcom/airbnb/android/views/ROTabBar;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    if-lt v7, v4, :cond_20

    .line 1361
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-static {v7, v8}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_20
.end method

.method private extractArguments()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    .line 1227
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1228
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserId:J

    .line 1229
    const-string/jumbo v2, "thread_id"

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mThreadId:J

    .line 1230
    const-string/jumbo v2, "conf_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mConfirmationCode:Ljava/lang/String;

    .line 1231
    const-string/jumbo v2, "reservation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Reservation;

    iput-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 1232
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-nez v2, :cond_6c

    .line 1233
    const-string/jumbo v2, "res_id"

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservationId:J

    .line 1237
    :goto_3a
    invoke-static {}, Lcom/airbnb/android/activities/ROActivity$LaunchState;->values()[Lcom/airbnb/android/activities/ROActivity$LaunchState;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "launch_state"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mLaunchState:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .line 1239
    const-string/jumbo v2, "from_hh"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1240
    .local v1, "inquiryFromHH":Z
    iget-wide v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mThreadId:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_62

    if-nez v1, :cond_62

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mLaunchState:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    sget-object v4, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Itinerary:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    if-ne v2, v4, :cond_68

    :cond_62
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mLaunchState:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    sget-object v4, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Message:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    if-ne v2, v4, :cond_75

    :cond_68
    const/4 v2, 0x1

    :goto_69
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mOpenWithMessageTab:Z

    .line 1241
    return-void

    .line 1235
    .end local v1    # "inquiryFromHH":Z
    :cond_6c
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservationId:J

    goto :goto_3a

    .restart local v1    # "inquiryFromHH":Z
    :cond_75
    move v2, v3

    .line 1240
    goto :goto_69
.end method

.method private fetchReservationById(Z)V
    .registers 8
    .param p1, "refreshData"    # Z

    .prologue
    const-wide/16 v4, -0x1

    .line 1172
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRefreshRO:Z

    .line 1173
    iget-wide v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    iget-wide v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mThreadId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    iget-wide v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservationId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mConfirmationCode:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 1175
    :cond_1a
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRefreshRO:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRestoredState:Z

    if-eqz v2, :cond_2c

    .line 1176
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {p0, v2, v3, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->setReservationObject(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;)V

    .line 1224
    :cond_2b
    :goto_2b
    return-void

    .line 1178
    :cond_2c
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 1179
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReload:Z

    .line 1180
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$12;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ROContainerFragment$12;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    .line 1206
    .local v0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReservationObjectRequest;>;"
    const/4 v1, 0x0

    .line 1207
    .local v1, "request":Lcom/airbnb/android/requests/ReservationObjectRequest;
    iget-wide v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservationId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_53

    .line 1208
    iget-wide v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservationId:J

    invoke-static {v2, v3, v0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->forReservationId(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;

    move-result-object v1

    .line 1216
    :cond_46
    :goto_46
    if-eqz v1, :cond_2b

    .line 1217
    if-eqz p1, :cond_4f

    .line 1218
    sget-object v2, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_ONLY:Lcom/android/volley/Request$ReturnStrategy;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/requests/ReservationObjectRequest;->setReturnStrategy(Lcom/android/volley/Request$ReturnStrategy;)V

    .line 1220
    :cond_4f
    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    goto :goto_2b

    .line 1209
    :cond_53
    iget-wide v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mThreadId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_60

    .line 1210
    iget-wide v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mThreadId:J

    invoke-static {v2, v3, v0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->forThreadId(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;

    move-result-object v1

    goto :goto_46

    .line 1211
    :cond_60
    iget-wide v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6d

    .line 1212
    iget-wide v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserId:J

    invoke-static {v2, v3, v0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->forUserId(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;

    move-result-object v1

    goto :goto_46

    .line 1213
    :cond_6d
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mConfirmationCode:Ljava/lang/String;

    if-eqz v2, :cond_46

    .line 1214
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mConfirmationCode:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->forConfirmationCode(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;

    move-result-object v1

    goto :goto_46
.end method

.method public static getBundleArgs(Ljava/lang/String;JZZI)Landroid/os/Bundle;
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "id"    # J
    .param p3, "inquiryFromHH"    # Z
    .param p4, "isWideMode"    # Z
    .param p5, "launchState"    # I

    .prologue
    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    const-string/jumbo v1, "from_hh"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    const-string/jumbo v1, "wide_mode"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    const-string/jumbo v1, "launch_state"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    return-object v0
.end method

.method public static getConsolidatedReservationStatus(Lcom/airbnb/android/models/ReservationStatus;Lcom/airbnb/android/models/ReservationStatus;)Lcom/airbnb/android/models/ReservationStatus;
    .registers 2
    .param p0, "reservationStatus"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p1, "msgThreadStatus"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 932
    if-eqz p0, :cond_3

    .end local p0    # "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    :goto_2
    return-object p0

    .restart local p0    # "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    :cond_3
    move-object p0, p1

    goto :goto_2
.end method

.method protected static getFragmentWithArg(Ljava/lang/String;JZI)Lcom/airbnb/android/fragments/ROContainerFragment;
    .registers 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "id"    # J
    .param p3, "isWideMode"    # Z
    .param p4, "launchState"    # I

    .prologue
    .line 197
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/fragments/ROContainerFragment;->getFragmentWithArg(Ljava/lang/String;JZZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v0

    return-object v0
.end method

.method private static getFragmentWithArg(Ljava/lang/String;JZZI)Lcom/airbnb/android/fragments/ROContainerFragment;
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "id"    # J
    .param p3, "inquiryFromHH"    # Z
    .param p4, "isWideMode"    # Z
    .param p5, "launchState"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;-><init>()V

    .line 202
    .local v0, "fragment":Lcom/airbnb/android/fragments/ROContainerFragment;
    invoke-static/range {p0 .. p5}, Lcom/airbnb/android/fragments/ROContainerFragment;->getBundleArgs(Ljava/lang/String;JZZI)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 203
    return-object v0
.end method

.method private getScrollY(I)I
    .registers 2
    .param p1, "scrollY"    # I

    .prologue
    .line 288
    return p1
.end method

.method private handleInquiryOptions(Landroid/content/Intent;)V
    .registers 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 1511
    const-string/jumbo v0, "send_special_offer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1513
    sget-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->SpecialOffer:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mResponseResult:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 1514
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->sendSpecialOffer(Landroid/content/Intent;)V

    .line 1520
    :goto_11
    return-void

    .line 1517
    :cond_12
    sget-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->Inquiry:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mResponseResult:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 1518
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->sendPreApproveOrDeclineInquiry(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method private hideLoaderFrameWithDelay()V
    .registers 5

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/ROContainerFragment$14;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROContainerFragment$14;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/views/StickyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1300
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Reservation;ZI)Lcom/airbnb/android/fragments/ROContainerFragment;
    .registers 8
    .param p0, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p1, "isWideMode"    # Z
    .param p2, "launchState"    # I

    .prologue
    .line 207
    const-string/jumbo v2, "res_id"

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4, p1, p2}, Lcom/airbnb/android/fragments/ROContainerFragment;->getFragmentWithArg(Ljava/lang/String;JZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v1

    .line 208
    .local v1, "frag":Lcom/airbnb/android/fragments/ROContainerFragment;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "reservation"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 210
    const-string/jumbo v2, "wide_mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 212
    return-object v1
.end method

.method public static newInstanceForConfirmationCode(Ljava/lang/String;Z)Lcom/airbnb/android/fragments/ROContainerFragment;
    .registers 6
    .param p0, "confirmationCode"    # Ljava/lang/String;
    .param p1, "isWideMode"    # Z

    .prologue
    .line 187
    new-instance v1, Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;-><init>()V

    .line 188
    .local v1, "fragment":Lcom/airbnb/android/fragments/ROContainerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "conf_code"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v2, "from_hh"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    const-string/jumbo v2, "wide_mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 193
    return-object v1
.end method

.method public static newInstanceForReservationId(JZI)Lcom/airbnb/android/fragments/ROContainerFragment;
    .registers 5
    .param p0, "reservationId"    # J
    .param p2, "isWideMode"    # Z
    .param p3, "launchState"    # I

    .prologue
    .line 183
    const-string/jumbo v0, "res_id"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ROContainerFragment;->getFragmentWithArg(Ljava/lang/String;JZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceForThreadId(JZZI)Lcom/airbnb/android/fragments/ROContainerFragment;
    .registers 11
    .param p0, "threadId"    # J
    .param p2, "inquiryFromHH"    # Z
    .param p3, "isWideMode"    # Z
    .param p4, "launchState"    # I

    .prologue
    .line 179
    const-string/jumbo v0, "thread_id"

    move-wide v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/fragments/ROContainerFragment;->getFragmentWithArg(Ljava/lang/String;JZZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceForUserId(JZI)Lcom/airbnb/android/fragments/ROContainerFragment;
    .registers 5
    .param p0, "userId"    # J
    .param p2, "isWideMode"    # Z
    .param p3, "launchState"    # I

    .prologue
    .line 175
    const-string/jumbo v0, "user_id"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ROContainerFragment;->getFragmentWithArg(Ljava/lang/String;JZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v0

    return-object v0
.end method

.method private openWithMessageTabIfNeeded(Z)V
    .registers 4
    .param p1, "shouldOpenMessageTab"    # Z

    .prologue
    .line 936
    if-eqz p1, :cond_6

    .line 937
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->selectMessageTab()V

    .line 944
    :goto_5
    return-void

    .line 940
    :cond_6
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRefreshRO:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 941
    .local v0, "tabToSelect":I
    :goto_10
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->selectTabImpl(I)V

    .line 942
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->trackROTabImpression(I)V

    goto :goto_5

    .line 940
    .end local v0    # "tabToSelect":I
    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private selectMessageTab()V
    .registers 7

    .prologue
    .line 1268
    sget-object v4, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->selectTab(Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;)V

    .line 1269
    sget-object v4, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v3

    .line 1270
    .local v3, "tabIndex":I
    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->showTabContentFor(I)V

    .line 1272
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReceivedPush:Z

    if-eqz v4, :cond_37

    .line 1273
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getTabHolderScrollingContent()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    .line 1274
    .local v2, "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .line 1276
    .local v0, "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    instance-of v4, v0, Lcom/airbnb/android/fragments/ROMessageFragment;

    if-eqz v4, :cond_34

    move-object v1, v0

    .line 1278
    check-cast v1, Lcom/airbnb/android/fragments/ROMessageFragment;

    .line 1279
    .local v1, "msgFrag":Lcom/airbnb/android/fragments/ROMessageFragment;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROMessageFragment;->scrollToBottom()V

    .line 1281
    .end local v1    # "msgFrag":Lcom/airbnb/android/fragments/ROMessageFragment;
    :cond_34
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReceivedPush:Z

    .line 1284
    .end local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    .end local v2    # "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    :cond_37
    return-void
.end method

.method private selectTabImpl(I)V
    .registers 3
    .param p1, "selectedIndex"    # I

    .prologue
    .line 820
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/ROTabBar;->selectTabButton(I)V

    .line 821
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->updateImageOnTabUpdated(I)V

    .line 822
    return-void
.end method

.method private sendPreApproveOrDeclineInquiry(Landroid/content/Intent;)V
    .registers 15
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const-wide/16 v4, -0x1

    .line 1475
    const-string/jumbo v11, "for_decline"

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1476
    .local v6, "forDecline":Z
    const-string/jumbo v11, "guest_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1477
    .local v8, "guestName":Ljava/lang/String;
    const-string/jumbo v11, "thread_id"

    invoke-virtual {p1, v11, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1478
    .local v0, "threadId":J
    const-string/jumbo v11, "listing_id"

    invoke-virtual {p1, v11, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1481
    .local v2, "listingId":J
    if-eqz v6, :cond_33

    sget-object v10, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    .line 1483
    .local v10, "status":Lcom/airbnb/android/models/ReservationStatus;
    :goto_23
    invoke-direct {p0, v10, v8, v12}, Lcom/airbnb/android/fragments/ROContainerFragment;->createProgressDialogIfNeeded(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;Z)V

    .line 1485
    new-instance v7, Lcom/airbnb/android/fragments/ROContainerFragment$18;

    invoke-direct {v7, p0, v10, v8}, Lcom/airbnb/android/fragments/ROContainerFragment$18;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V

    .line 1505
    .local v7, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateMessageThreadRequest;>;"
    invoke-static/range {v0 .. v7}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->forPreApproveOrDecline(JJJZLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    move-result-object v9

    .line 1507
    .local v9, "request":Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    invoke-virtual {v9}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->execute()V

    .line 1508
    return-void

    .line 1481
    .end local v7    # "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateMessageThreadRequest;>;"
    .end local v9    # "request":Lcom/airbnb/android/requests/UpdateMessageThreadRequest;
    .end local v10    # "status":Lcom/airbnb/android/models/ReservationStatus;
    :cond_33
    sget-object v10, Lcom/airbnb/android/models/ReservationStatus;->Preapproved:Lcom/airbnb/android/models/ReservationStatus;

    goto :goto_23
.end method

.method private sendSpecialOffer(Landroid/content/Intent;)V
    .registers 9
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 1523
    const-string/jumbo v2, "thread"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/MessageThread;

    .line 1524
    .local v1, "messageThread":Lcom/airbnb/android/models/MessageThread;
    if-eqz v1, :cond_2a

    .line 1525
    const-string/jumbo v2, "click_special_offer"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getReservationId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getThreadId()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowSelectOptionForInquiry(Ljava/lang/String;JJ)V

    .line 1526
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/airbnb/android/activities/SendSpecialOfferActivity;->intentForMessageThread(Landroid/content/Context;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v0

    .line 1527
    .local v0, "intent":Landroid/content/Intent;
    const/16 v2, 0x321

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1529
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2a
    return-void
.end method

.method private setStickyProfileImageAndScroll()V
    .registers 3

    .prologue
    .line 1287
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    if-eqz v0, :cond_11

    const v0, 0x7f0e036a

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/ROTabBar;->updateDisplayText(Ljava/lang/String;)V

    .line 1288
    return-void

    .line 1287
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserDisplayName:Ljava/lang/String;

    goto :goto_d
.end method

.method private setupHelpMenuItemIfNeeded(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 4
    .param p1, "msgThreadStatus"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHelpMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_12

    .line 1307
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHelpMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-nez v0, :cond_e

    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    if-ne p1, v0, :cond_13

    :cond_e
    const/4 v0, 0x1

    :goto_f
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1309
    :cond_12
    return-void

    .line 1307
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setupROViewPagerTabs(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 642
    const v0, 0x7f0804f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    .line 643
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/airbnb/android/fragments/ROContainerFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROContainerFragment$6;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 695
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 696
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 697
    return-void
.end method

.method private setupRespondButtonForGuest()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1065
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v5, :cond_40

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->isArtificial()Z

    move-result v5

    if-nez v5, :cond_40

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v2

    .line 1066
    .local v2, "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    :goto_14
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v5, :cond_42

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v4}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    .line 1069
    .local v1, "msgThreadStatus":Lcom/airbnb/android/models/ReservationStatus;
    :goto_1e
    if-eqz v2, :cond_24

    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Unknown:Lcom/airbnb/android/models/ReservationStatus;

    if-ne v2, v4, :cond_44

    :cond_24
    move-object v3, v1

    .line 1071
    .local v3, "status":Lcom/airbnb/android/models/ReservationStatus;
    :goto_25
    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    if-ne v3, v4, :cond_46

    .line 1073
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v4}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 1075
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasSimplifiedBooking()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1076
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v4}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/airbnb/android/fragments/ROContainerFragment;->showRespondButtonForBookIt(Lcom/airbnb/android/models/Listing;Z)V

    .line 1095
    .end local v0    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_3f
    :goto_3f
    return-void

    .end local v1    # "msgThreadStatus":Lcom/airbnb/android/models/ReservationStatus;
    .end local v2    # "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    .end local v3    # "status":Lcom/airbnb/android/models/ReservationStatus;
    :cond_40
    move-object v2, v4

    .line 1065
    goto :goto_14

    .restart local v2    # "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    :cond_42
    move-object v1, v4

    .line 1066
    goto :goto_1e

    .restart local v1    # "msgThreadStatus":Lcom/airbnb/android/models/ReservationStatus;
    :cond_44
    move-object v3, v2

    .line 1069
    goto :goto_25

    .line 1079
    .restart local v3    # "status":Lcom/airbnb/android/models/ReservationStatus;
    :cond_46
    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Preapproved:Lcom/airbnb/android/models/ReservationStatus;

    if-eq v3, v4, :cond_4e

    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->SpecialOffer:Lcom/airbnb/android/models/ReservationStatus;

    if-ne v3, v4, :cond_54

    .line 1081
    :cond_4e
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-direct {p0, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->showRespondButtonForAccept(Lcom/airbnb/android/models/MessageThread;)V

    goto :goto_3f

    .line 1083
    :cond_54
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v4

    if-nez v4, :cond_68

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 1085
    :cond_68
    iput-boolean v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    goto :goto_3f

    .line 1087
    :cond_6b
    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Checkpoint:Lcom/airbnb/android/models/ReservationStatus;

    if-ne v3, v4, :cond_73

    .line 1089
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->showRespondButtonForCheckpoint()V

    goto :goto_3f

    .line 1091
    :cond_73
    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Timedout:Lcom/airbnb/android/models/ReservationStatus;

    if-eq v3, v4, :cond_7b

    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Cancelled:Lcom/airbnb/android/models/ReservationStatus;

    if-ne v3, v4, :cond_3f

    .line 1093
    :cond_7b
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v4}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/airbnb/android/fragments/ROContainerFragment;->showRespondButtonForBookIt(Lcom/airbnb/android/models/Listing;Z)V

    goto :goto_3f
.end method

.method private setupRespondButtonForHost()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1014
    const/4 v1, 0x0

    .line 1016
    .local v1, "simplifiedBookingExperiment":Z
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->isArtificial()Z

    move-result v2

    if-nez v2, :cond_53

    .line 1018
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    const v5, 0x7f0e069b

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 1019
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    .line 1028
    :goto_1f
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    if-eqz v2, :cond_52

    .line 1029
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v2

    if-eqz v2, :cond_88

    move v0, v3

    .line 1030
    .local v0, "isReservationRequest":Z
    :goto_30
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/ROContainerFragment$7;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/ROContainerFragment$7;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Z)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mLaunchState:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    sget-object v3, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Respond:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    if-ne v2, v3, :cond_4d

    .line 1045
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/airbnb/android/fragments/ROContainerFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/ROContainerFragment$8;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1056
    :cond_4d
    if-eqz v1, :cond_52

    .line 1058
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->showHostFtueIfNeeded()V

    .line 1061
    .end local v0    # "isReservationRequest":Z
    :cond_52
    return-void

    .line 1023
    :cond_53
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    const v5, 0x7f0e069c

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 1024
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v2}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v2

    sget-object v5, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    if-ne v2, v5, :cond_84

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isMyProfile()Z

    move-result v2

    if-nez v2, :cond_84

    move v2, v3

    :goto_70
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    .line 1025
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v2}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->hasSimplifiedBooking()Z

    move-result v2

    if-eqz v2, :cond_86

    move v1, v3

    :goto_83
    goto :goto_1f

    :cond_84
    move v2, v4

    .line 1024
    goto :goto_70

    :cond_86
    move v1, v4

    .line 1025
    goto :goto_83

    :cond_88
    move v0, v4

    .line 1029
    goto :goto_30
.end method

.method private setupRespondButtonIfNeeded()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 990
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    .line 991
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->setRespondNowButtonVisibility(Z)V

    .line 993
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-nez v3, :cond_10

    .line 1011
    :cond_f
    :goto_f
    return-void

    .line 997
    :cond_10
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v3}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 999
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    :goto_1a
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v3

    if-nez v3, :cond_32

    :cond_26
    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/Listing;->isMine(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_32
    move v1, v2

    :cond_33
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHostMode:Z

    .line 1002
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHostMode:Z

    if-eqz v1, :cond_46

    .line 1003
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->setupRespondButtonForHost()V

    .line 1008
    :goto_3c
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    if-eqz v1, :cond_f

    .line 1009
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->setRespondNowButtonVisibility(Z)V

    goto :goto_f

    .line 997
    .end local v0    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_44
    const/4 v0, 0x0

    goto :goto_1a

    .line 1005
    .restart local v0    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->setupRespondButtonForGuest()V

    goto :goto_3c
.end method

.method private setupTabs()V
    .registers 3

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isSingleTab()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 806
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ROTabBar;->setVisibility(I)V

    .line 811
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ROTabBar;->setItineraryTabButtonEnabled(Z)V

    .line 812
    return-void

    .line 807
    :cond_18
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    if-eqz v0, :cond_c

    .line 808
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ROTabBar;->setMessageTabButtonEnabled(Z)V

    goto :goto_c
.end method

.method private shouldShowROProfileDetailsInContainer()Z
    .registers 2

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->shouldShowROProfileDetailsInProfile()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private showHostFtueIfNeeded()V
    .registers 6

    .prologue
    .line 1532
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeHostResponseFtue(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1533
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getReservationId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getThreadId()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/analytics/ROAnalytics;->trackSimplifiedBookingEducationView(JJ)V

    .line 1534
    const v1, 0x7f0e069a

    const v2, 0x7f0e0699

    const v3, 0x7f0e0698

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->newInstance(IIIZ)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v0

    .line 1539
    .local v0, "hostEducationDialog":Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    new-instance v1, Lcom/airbnb/android/fragments/ROContainerFragment$19;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/fragments/ROContainerFragment$19;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->setSingleButtonDialogListener(Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;)V

    .line 1548
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenHostResponseFtue(Landroid/content/Context;)V

    .line 1551
    .end local v0    # "hostEducationDialog":Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    :cond_3a
    return-void
.end method

.method private showRespondButtonForAccept(Lcom/airbnb/android/models/MessageThread;)V
    .registers 9
    .param p1, "messageThread"    # Lcom/airbnb/android/models/MessageThread;

    .prologue
    .line 1099
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    .line 1100
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v3

    .line 1101
    .local v3, "specialOffer":Lcom/airbnb/android/models/SpecialOffer;
    if-eqz v3, :cond_47

    .line 1102
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    .line 1103
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    const v5, 0x7f0e0104

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 1105
    invoke-virtual {v3}, Lcom/airbnb/android/models/SpecialOffer;->getExpiresAt()Ljava/util/Date;

    move-result-object v1

    .line 1106
    .local v1, "expiresAtDate":Ljava/util/Date;
    if-eqz v1, :cond_3d

    const-string/jumbo v4, "guest"

    const-string/jumbo v5, "mobile_complete_booking_expiry_relaunch"

    const-string/jumbo v6, "enabled"

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1107
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/airbnb/android/utils/DateHelper;->getExpiresAt(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "expiresAt":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1109
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v4, v0}, Lcom/airbnb/android/views/StickyButton;->setSubtitle(Ljava/lang/String;)V

    .line 1112
    .end local v0    # "expiresAt":Ljava/lang/String;
    :cond_3d
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v5, Lcom/airbnb/android/fragments/ROContainerFragment$9;

    invoke-direct {v5, p0, v3, v2}, Lcom/airbnb/android/fragments/ROContainerFragment$9;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/SpecialOffer;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    .end local v1    # "expiresAtDate":Ljava/util/Date;
    :cond_47
    return-void
.end method

.method private showRespondButtonForBookIt(Lcom/airbnb/android/models/Listing;Z)V
    .registers 7
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "canShowInstantBook"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1128
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1148
    :goto_7
    return-void

    .line 1131
    :cond_8
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    .line 1132
    if-eqz p2, :cond_2d

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1134
    .local v1, "shouldShowInstantBook":Z
    :goto_12
    if-eqz v1, :cond_33

    .line 1135
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->showBookNowForInstantBook()Z

    move-result v2

    if-eqz v2, :cond_2f

    const v0, 0x7f0e00a0

    .line 1139
    .local v0, "bookButtonResId":I
    :goto_1d
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 1140
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/ROContainerFragment$10;

    invoke-direct {v3, p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment$10;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 1132
    .end local v0    # "bookButtonResId":I
    .end local v1    # "shouldShowInstantBook":Z
    :cond_2d
    const/4 v1, 0x0

    goto :goto_12

    .line 1135
    .restart local v1    # "shouldShowInstantBook":Z
    :cond_2f
    const v0, 0x7f0e0365

    goto :goto_1d

    .line 1137
    :cond_33
    const v0, 0x7f0e0104

    .restart local v0    # "bookButtonResId":I
    goto :goto_1d
.end method

.method private showRespondButtonForCheckpoint()V
    .registers 3

    .prologue
    .line 1151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    .line 1152
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e06a4

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 1153
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/ROContainerFragment$11;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROContainerFragment$11;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    return-void
.end method

.method private showResponseSuccessDialog(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V
    .registers 11
    .param p1, "status"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p2, "userName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1257
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1258
    invoke-virtual {p1}, Lcom/airbnb/android/models/ReservationStatus;->getCompletedTitleResId()I

    move-result v1

    .line 1259
    .local v1, "titleRes":I
    invoke-virtual {p1}, Lcom/airbnb/android/models/ReservationStatus;->getCompletedSubtitleResId()I

    move-result v0

    .line 1262
    .local v0, "subtitleRes":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {p0, v0, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020129

    const/16 v6, 0x1770

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1263
    invoke-direct {p0, v7}, Lcom/airbnb/android/fragments/ROContainerFragment;->fetchReservationById(Z)V

    .line 1265
    .end local v0    # "subtitleRes":I
    .end local v1    # "titleRes":I
    :cond_29
    return-void
.end method

.method private showTabContentFor(I)V
    .registers 8
    .param p1, "tabIndex"    # I

    .prologue
    .line 511
    move v3, p1

    .line 512
    .local v3, "next":I
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 514
    .local v1, "current":I
    if-ne v3, v1, :cond_a

    .line 535
    :goto_9
    return-void

    .line 517
    :cond_a
    if-le v3, v1, :cond_2a

    .line 519
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    :goto_e
    if-gt v2, v3, :cond_48

    .line 520
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getTabHolderScrollingContent()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .line 521
    .local v0, "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    if-eqz v0, :cond_27

    .line 522
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v4}, Lcom/airbnb/android/views/ROTabBar;->getTop()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;->adjustScroll(I)V

    .line 519
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 527
    .end local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    .end local v2    # "i":I
    :cond_2a
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2c
    if-lt v2, v3, :cond_48

    .line 528
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getTabHolderScrollingContent()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .line 529
    .restart local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    if-eqz v0, :cond_45

    .line 530
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v4}, Lcom/airbnb/android/views/ROTabBar;->getTop()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;->adjustScroll(I)V

    .line 527
    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 534
    .end local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    :cond_48
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_9
.end method

.method private showTabletMessageFragment()V
    .registers 5

    .prologue
    .line 924
    invoke-static {}, Lcom/airbnb/android/fragments/ROMessageFragment;->newInstance()Lcom/airbnb/android/fragments/ROMessageFragment;

    move-result-object v0

    .line 925
    .local v0, "fragment":Lcom/airbnb/android/fragments/ROMessageFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f08028b

    const-string/jumbo v3, "tablet_mode"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 926
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 927
    return-void
.end method

.method private trackROTabImpression(I)V
    .registers 12
    .param p1, "tabIndex"    # I

    .prologue
    .line 1382
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getReservationId()J

    move-result-wide v2

    .line 1383
    .local v2, "reservationId":J
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getThreadId()J

    move-result-wide v4

    .line 1385
    .local v4, "threadId":J
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v6

    .line 1386
    .local v6, "hasItinerary":Z
    const/4 v0, 0x0

    .line 1387
    .local v0, "tab":Ljava/lang/String;
    if-eqz v6, :cond_21

    .line 1388
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v1, v6}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v7

    .line 1389
    .local v7, "itineraryTabIndex":I
    if-ne p1, v7, :cond_21

    .line 1390
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHostMode:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/airbnb/android/analytics/ROAnalytics;->trackROItinerary(ZJJ)V

    .line 1391
    const-string/jumbo v0, "itinerary"

    .line 1394
    .end local v7    # "itineraryTabIndex":I
    :cond_21
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v1, v6}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v9

    .line 1395
    .local v9, "profileTabIndex":I
    if-ne p1, v9, :cond_3e

    .line 1396
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHostMode:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/airbnb/android/analytics/ROAnalytics;->trackROProfile(ZJJ)V

    .line 1397
    const-string/jumbo v0, "profile"

    .line 1405
    :cond_31
    :goto_31
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mImpressionFromLanding:Z

    if-eqz v1, :cond_3a

    .line 1406
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHostMode:Z

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/analytics/ROAnalytics;->trackROImpression(Ljava/lang/String;ZJJ)V

    .line 1408
    :cond_3a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mImpressionFromLanding:Z

    .line 1409
    return-void

    .line 1399
    :cond_3e
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v1, v6}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v8

    .line 1400
    .local v8, "msgTabIndex":I
    if-ne p1, v8, :cond_31

    .line 1401
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHostMode:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/airbnb/android/analytics/ROAnalytics;->trackROMessages(ZJJ)V

    .line 1402
    const-string/jumbo v0, "message"

    goto :goto_31
.end method

.method private updateDisplayImage(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "isListingImage"    # Z

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mSquareListingImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    .line 599
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mSquareListingImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 601
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    const v1, 0x7f0e036a

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ROTabBar;->updateDisplayText(Ljava/lang/String;)V

    .line 639
    :cond_21
    :goto_21
    return-void

    .line 603
    :cond_22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 607
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/airbnb/android/fragments/ROContainerFragment$5;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;ZLjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/android/views/AirImageView;->getImage(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    goto :goto_21
.end method

.method private updateImageOnTabUpdated(I)V
    .registers 5
    .param p1, "tabIndex"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserProfileUrl:Ljava/lang/String;

    .line 585
    .local v0, "imageUrl":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    .line 586
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHostMode:Z

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v1, :cond_28

    .line 588
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v1

    if-ne p1, v1, :cond_28

    .line 589
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    .line 590
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    .line 593
    :cond_28
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->updateDisplayImage(Ljava/lang/String;Z)V

    .line 594
    return-void
.end method

.method private updateUserProfileImageAndName()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 539
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 541
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/airbnb/android/models/Listing;->isMine(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v2

    .line 545
    .local v2, "user":Lcom/airbnb/android/models/User;
    :goto_24
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserDisplayName:Ljava/lang/String;

    .line 546
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/airbnb/android/views/ROTabBar;->updateDisplayText(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getPictureUrlLarge()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b0

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getPictureUrlLarge()Ljava/lang/String;

    move-result-object v3

    :goto_3b
    iput-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserProfileUrl:Ljava/lang/String;

    .line 549
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mSmallUserProfileUrl:Ljava/lang/String;

    .line 551
    const/4 v1, 0x0

    .line 552
    .local v1, "imageUrl":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHostMode:Z

    if-eqz v3, :cond_b5

    .line 553
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserProfileUrl:Ljava/lang/String;

    .line 554
    iput-boolean v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    .line 560
    :goto_4c
    iget-boolean v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    invoke-direct {p0, v1, v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->updateDisplayImage(Ljava/lang/String;Z)V

    .line 562
    iget v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I

    if-ge v3, v4, :cond_73

    .line 563
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v3, v5}, Lcom/airbnb/android/views/AirImageView;->setVisibility(I)V

    .line 564
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/AirImageView;->getScrollX()I

    move-result v4

    iget v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I

    div-int/lit8 v6, v6, 0x2

    invoke-direct {p0, v6}, Lcom/airbnb/android/fragments/ROContainerFragment;->getScrollY(I)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/airbnb/android/views/AirImageView;->scrollTo(II)V

    .line 568
    :cond_73
    iget v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I

    if-ge v3, v4, :cond_d3

    .line 569
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v3}, Lcom/airbnb/android/views/ROTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I

    iget v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 573
    :goto_8c
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v3}, Lcom/airbnb/android/views/ROTabBar;->requestLayout()V

    .line 574
    return-void

    .line 541
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "user":Lcom/airbnb/android/models/User;
    :cond_92
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v2

    goto :goto_24

    .line 543
    :cond_99
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isMyProfile()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    .restart local v2    # "user":Lcom/airbnb/android/models/User;
    :goto_ab
    goto/16 :goto_24

    .end local v2    # "user":Lcom/airbnb/android/models/User;
    :cond_ad
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    goto :goto_ab

    .line 548
    .restart local v2    # "user":Lcom/airbnb/android/models/User;
    :cond_b0
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    .line 556
    .restart local v1    # "imageUrl":Ljava/lang/String;
    :cond_b5
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v3, :cond_cc

    move v0, v4

    .line 557
    .local v0, "hasReservation":Z
    :goto_ba
    if-eqz v0, :cond_ce

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v1

    .line 558
    :goto_c6
    if-eqz v0, :cond_d1

    move v3, v4

    :goto_c9
    iput-boolean v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    goto :goto_4c

    .end local v0    # "hasReservation":Z
    :cond_cc
    move v0, v5

    .line 556
    goto :goto_ba

    .line 557
    .restart local v0    # "hasReservation":Z
    :cond_ce
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserProfileUrl:Ljava/lang/String;

    goto :goto_c6

    :cond_d1
    move v3, v5

    .line 558
    goto :goto_c9

    .line 571
    .end local v0    # "hasReservation":Z
    :cond_d3
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v3}, Lcom/airbnb/android/views/ROTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_8c
.end method


# virtual methods
.method public getHeaderImageHeight()I
    .registers 2

    .prologue
    .line 741
    iget v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I

    return v0
.end method

.method public getInputMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mInputMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getListViewOnScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method public getMessageThread()Lcom/airbnb/android/models/MessageThread;
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    return-object v0
.end method

.method public getOtherUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method public getReservationId()J
    .registers 3

    .prologue
    .line 726
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservationId:J

    goto :goto_a
.end method

.method public getScrollViewOnScrollListener()Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollViewScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    return-object v0
.end method

.method public getStickyButtonHeight()I
    .registers 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StickyButton;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTabBarHeight()I
    .registers 2

    .prologue
    .line 746
    iget v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTabBarHeight:I

    return v0
.end method

.method public getThreadId()J
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v0}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mThreadId:J

    goto :goto_a
.end method

.method public isMyProfile()Z
    .registers 6

    .prologue
    .line 710
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 711
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method protected isReload()Z
    .registers 2

    .prologue
    .line 1565
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReload:Z

    return v0
.end method

.method public isRespondNowButtonVisible()Z
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StickyButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSingleTab()Z
    .registers 6

    .prologue
    .line 704
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 705
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUserId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-nez v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public isWideMode()Z
    .registers 2

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    return v0
.end method

.method public newMessageReceived(Lcom/airbnb/android/events/MessageReceivedEvent;)V
    .registers 9
    .param p1, "event"    # Lcom/airbnb/android/events/MessageReceivedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_37

    iget-wide v3, p1, Lcom/airbnb/android/events/MessageReceivedEvent;->mThreadId:J

    iget-wide v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mThreadId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_37

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    if-eqz v3, :cond_37

    .line 1369
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getTabHolderScrollingContent()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    .line 1370
    .local v2, "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .line 1372
    .local v0, "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    instance-of v3, v0, Lcom/airbnb/android/fragments/ROMessageFragment;

    if-eqz v3, :cond_37

    move-object v1, v0

    .line 1373
    check-cast v1, Lcom/airbnb/android/fragments/ROMessageFragment;

    .line 1374
    .local v1, "msgFrag":Lcom/airbnb/android/fragments/ROMessageFragment;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->selectMessageTab()V

    .line 1375
    iget-object v3, p1, Lcom/airbnb/android/events/MessageReceivedEvent;->mMessage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/airbnb/android/fragments/ROMessageFragment;->createAndShowNewMessage(Ljava/lang/String;Z)Lcom/airbnb/android/models/Post;

    .line 1376
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReceivedPush:Z

    .line 1379
    .end local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    .end local v1    # "msgFrag":Lcom/airbnb/android/fragments/ROMessageFragment;
    .end local v2    # "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    :cond_37
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 460
    const/4 v3, -0x1

    if-ne p2, v3, :cond_a

    .line 461
    sparse-switch p1, :sswitch_data_54

    .line 498
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 502
    :cond_a
    :goto_a
    return-void

    .line 463
    :sswitch_b
    invoke-direct {p0, p3}, Lcom/airbnb/android/fragments/ROContainerFragment;->handleInquiryOptions(Landroid/content/Intent;)V

    goto :goto_a

    .line 467
    :sswitch_f
    sget-object v3, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->Reservation:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    iput-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mResponseResult:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 468
    invoke-direct {p0, p3}, Lcom/airbnb/android/fragments/ROContainerFragment;->acceptOrDeclineReservationRequest(Landroid/content/Intent;)V

    goto :goto_a

    .line 472
    :sswitch_17
    sget-object v3, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->SpecialOfferSent:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    iput-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mResponseResult:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 475
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "guestName":Ljava/lang/String;
    sget-object v3, Lcom/airbnb/android/models/ReservationStatus;->SpecialOffer:Lcom/airbnb/android/models/ReservationStatus;

    invoke-direct {p0, v3, v0, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->createProgressDialogIfNeeded(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;Z)V

    goto :goto_a

    .line 484
    .end local v0    # "guestName":Ljava/lang/String;
    :sswitch_2b
    sget-object v3, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->RefreshView:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    iput-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mResponseResult:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    goto :goto_a

    .line 487
    :sswitch_30
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_a

    .line 490
    :sswitch_38
    invoke-direct {p0, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->fetchReservationById(Z)V

    goto :goto_a

    .line 493
    :sswitch_3c
    sget-object v3, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v1

    .line 494
    .local v1, "itineraryTabIndex":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v3, v1}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/fragments/ROItineraryFragment;

    .line 495
    .local v2, "roItineraryFragment":Lcom/airbnb/android/fragments/ROItineraryFragment;
    invoke-virtual {v2, p1, p2, p3}, Lcom/airbnb/android/fragments/ROItineraryFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a

    .line 461
    :sswitch_data_54
    .sparse-switch
        0x2bd -> :sswitch_2b
        0x2be -> :sswitch_2b
        0x2c2 -> :sswitch_b
        0x2c3 -> :sswitch_f
        0x2c4 -> :sswitch_30
        0x2c5 -> :sswitch_38
        0x321 -> :sswitch_17
        0x1389 -> :sswitch_3c
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->extractArguments()V

    .line 295
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 296
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->setHasOptionsMenu(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "wide_mode"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    .line 299
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mImpressionFromLanding:Z

    .line 302
    if-eqz p1, :cond_5f

    .line 303
    const-string/jumbo v0, "reservation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 304
    const-string/jumbo v0, "message_thread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/MessageThread;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    .line 305
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    .line 306
    const-string/jumbo v0, "scroll_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I

    .line 307
    const-string/jumbo v0, "landing_impression"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mImpressionFromLanding:Z

    .line 308
    const-string/jumbo v0, "saved_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mInputMessage:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    if-eqz v0, :cond_65

    move v0, v1

    :goto_5d
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRestoredState:Z

    .line 311
    :cond_5f
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 312
    return-void

    :cond_65
    move v0, v2

    .line 309
    goto :goto_5d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 415
    const v0, 0x7f100019

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 416
    const v0, 0x7f080551

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHelpMenu:Landroid/view/MenuItem;

    .line 417
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHelpMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/AirFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 420
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 328
    const v4, 0x7f0300e2

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 330
    .local v3, "view":Landroid/view/View;
    iput-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRootView:Landroid/view/View;

    .line 332
    const v4, 0x7f08028b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThreadContainer:Landroid/view/View;

    .line 333
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    if-eqz v4, :cond_a3

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThreadContainer:Landroid/view/View;

    if-eqz v4, :cond_a3

    const/4 v4, 0x1

    :goto_1c
    iput-boolean v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    .line 336
    if-eqz p2, :cond_39

    .line 338
    const v4, 0x7f080289

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, "contentView":Landroid/view/View;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThreadContainer:Landroid/view/View;

    if-eqz v4, :cond_a6

    iget-boolean v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    if-nez v4, :cond_a6

    .line 340
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v6, -0x1

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 341
    invoke-virtual {v3, v5, v5}, Landroid/view/View;->measure(II)V

    .line 347
    .end local v0    # "contentView":Landroid/view/View;
    :cond_39
    :goto_39
    const v4, 0x7f08019c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/AirImageView;

    iput-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    .line 348
    const v4, 0x3f2aaaab

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v6}, Lcom/airbnb/android/views/AirImageView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v1, v4

    .line 349
    .local v1, "photoHeight":I
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/AirImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    const v4, 0x7f0804f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/StickyButton;

    iput-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    .line 352
    const v4, 0x7f0804f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/ROTabBar;

    iput-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    .line 353
    const v4, 0x7f08028a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 355
    iput v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I

    .line 356
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b00ac

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTabBarHeight:I

    .line 358
    invoke-direct {p0, v5}, Lcom/airbnb/android/fragments/ROContainerFragment;->fetchReservationById(Z)V

    .line 360
    new-instance v2, Lcom/airbnb/android/fragments/ROContainerFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ROContainerFragment$3;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    .line 368
    .local v2, "tabListener":Lcom/airbnb/android/views/ROTabBar$ROTabListener;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v4, v2}, Lcom/airbnb/android/views/ROTabBar;->setTabListener(Lcom/airbnb/android/views/ROTabBar$ROTabListener;)V

    .line 370
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/ROContainerFragment$4;

    invoke-direct {v5, p0, v3}, Lcom/airbnb/android/fragments/ROContainerFragment$4;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 410
    return-object v3

    .end local v1    # "photoHeight":I
    .end local v2    # "tabListener":Lcom/airbnb/android/views/ROTabBar$ROTabListener;
    :cond_a3
    move v4, v5

    .line 333
    goto/16 :goto_1c

    .line 343
    .restart local v0    # "contentView":Landroid/view/View;
    :cond_a6
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/high16 v6, -0x80000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_39
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 506
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 507
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 429
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 426
    :pswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/activities/CustomerServiceActivity;->intentForCustomerService(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->startActivity(Landroid/content/Intent;)V

    .line 427
    const/4 v0, 0x1

    goto :goto_b

    .line 424
    nop

    :pswitch_data_1a
    .packed-switch 0x7f080551
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 434
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 435
    sget-object v1, Lcom/airbnb/android/fragments/ROContainerFragment$20;->$SwitchMap$com$airbnb$android$fragments$ROContainerFragment$ResponseResult:[I

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mResponseResult:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 454
    :cond_10
    :goto_10
    sget-object v1, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->None:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mResponseResult:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 455
    return-void

    .line 437
    :pswitch_15
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "guestName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->onSpecialOfferSent(Ljava/lang/String;)V

    goto :goto_10

    .line 443
    .end local v0    # "guestName":Ljava/lang/String;
    :pswitch_23
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_10

    .line 444
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_10

    .line 448
    :pswitch_36
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->fetchReservationById(Z)V

    goto :goto_10

    .line 435
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_23
        :pswitch_23
        :pswitch_36
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 318
    const-string/jumbo v0, "reservation"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 319
    const-string/jumbo v0, "message_thread"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 320
    const-string/jumbo v0, "user"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 321
    const-string/jumbo v0, "scroll_position"

    iget v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const-string/jumbo v0, "landing_impression"

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mImpressionFromLanding:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    const-string/jumbo v0, "saved_message"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mInputMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public onSpecialOfferSent(Ljava/lang/String;)V
    .registers 6
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1245
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1247
    :cond_12
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/ROContainerFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment$13;-><init>(Lcom/airbnb/android/fragments/ROContainerFragment;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/views/StickyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1254
    return-void
.end method

.method public saveInputMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mInputMessage:Ljava/lang/String;

    .line 777
    return-void
.end method

.method public selectTab(Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;)V
    .registers 3
    .param p1, "tab"    # Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->selectTabImpl(I)V

    .line 1169
    return-void
.end method

.method public setReservationObject(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;)V
    .registers 21
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "messageThread"    # Lcom/airbnb/android/models/MessageThread;
    .param p3, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v2, :cond_13

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getTripInvoice()Lcom/airbnb/android/models/TripInvoice;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/Reservation;->setTripInvoice(Lcom/airbnb/android/models/TripInvoice;)V

    .line 832
    :cond_13
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 833
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    .line 834
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    .line 836
    const/4 v14, 0x0

    .line 837
    .local v14, "consolidatedStatus":Lcom/airbnb/android/models/ReservationStatus;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isSingleTab()Z

    move-result v2

    if-nez v2, :cond_fa

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-static {v2, v3}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getConsolidatedReservationStatus(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;)Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v14

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v2, :cond_f6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v2}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v16

    .line 841
    .local v16, "msgThreadStatus":Lcom/airbnb/android/models/ReservationStatus;
    :goto_46
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->setupHelpMenuItemIfNeeded(Lcom/airbnb/android/models/ReservationStatus;)V

    .line 847
    .end local v16    # "msgThreadStatus":Lcom/airbnb/android/models/ReservationStatus;
    :goto_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v2, :cond_5f

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v2}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mThreadId:J

    .line 850
    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    invoke-virtual {v2, v14}, Lcom/airbnb/android/views/ROTabBar;->setStatus(Lcom/airbnb/android/models/ReservationStatus;)V

    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->setupRespondButtonIfNeeded()V

    .line 854
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->updateUserProfileImageAndName()V

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    if-nez v2, :cond_116

    .line 858
    new-instance v2, Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollViewScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTabBarHeight:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isSingleTab()Z

    move-result v13

    invoke-direct/range {v2 .. v13}, Lcom/airbnb/android/adapters/ROPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;Landroid/widget/AbsListView$OnScrollListener;IIZLcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/ROTabBar;->setROPagerAdapter(Lcom/airbnb/android/adapters/ROPagerAdapter;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRootView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->setupROViewPagerTabs(Landroid/view/View;)V

    .line 866
    :cond_bb
    :goto_bb
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->setupTabs()V

    .line 868
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/airbnb/android/fragments/ROContainerFragment;->setupActionbar(Lcom/airbnb/android/models/ReservationStatus;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-nez v2, :cond_140

    .line 871
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->disableMessageTabIfNeeded()Z

    move-result v15

    .line 872
    .local v15, "messageTabDisabled":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRefreshRO:Z

    if-nez v2, :cond_124

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mOpenWithMessageTab:Z

    if-eqz v2, :cond_124

    if-nez v15, :cond_124

    const/4 v2, 0x1

    :goto_dc
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->openWithMessageTabIfNeeded(Z)V

    .line 875
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    if-eqz v2, :cond_126

    if-nez v15, :cond_126

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isSingleTab()Z

    move-result v2

    if-nez v2, :cond_126

    .line 876
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->showTabletMessageFragment()V

    .line 884
    :cond_f2
    :goto_f2
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->hideLoaderFrameWithDelay()V

    .line 905
    .end local v15    # "messageTabDisabled":Z
    :cond_f5
    :goto_f5
    return-void

    .line 840
    :cond_f6
    const/16 v16, 0x0

    goto/16 :goto_46

    .line 843
    :cond_fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/AirImageView;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/AirImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4d

    .line 862
    :cond_116
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReload:Z

    if-eqz v2, :cond_bb

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ROPagerAdapter;->notifyDataSetChanged()V

    goto :goto_bb

    .line 872
    .restart local v15    # "messageTabDisabled":Z
    :cond_124
    const/4 v2, 0x0

    goto :goto_dc

    .line 877
    :cond_126
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->shouldShowROProfileDetailsInContainer()Z

    move-result v2

    if-eqz v2, :cond_130

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->showProfileDetailsFragment()V

    goto :goto_f2

    .line 879
    :cond_130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThreadContainer:Landroid/view/View;

    if-eqz v2, :cond_f2

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThreadContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f2

    .line 889
    .end local v15    # "messageTabDisabled":Z
    :cond_140
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRefreshRO:Z

    if-nez v2, :cond_179

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mOpenWithMessageTab:Z

    if-eqz v2, :cond_179

    const/4 v2, 0x1

    :goto_14d
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->openWithMessageTabIfNeeded(Z)V

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/ROTabBar;->setItineraryTabButtonEnabled(Z)V

    .line 894
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->hideLoaderFrameWithDelay()V

    .line 896
    if-eqz v14, :cond_168

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/views/ROTabBar;->animateTabBarButtonsPulse(J)V

    .line 900
    :cond_168
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    if-eqz v2, :cond_17b

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isSingleTab()Z

    move-result v2

    if-nez v2, :cond_17b

    .line 901
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->showTabletMessageFragment()V

    goto/16 :goto_f5

    .line 889
    :cond_179
    const/4 v2, 0x0

    goto :goto_14d

    .line 902
    :cond_17b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThreadContainer:Landroid/view/View;

    if-eqz v2, :cond_f5

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThreadContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f5
.end method

.method public setRespondNowButtonVisibility(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 761
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mRespondButton:Lcom/airbnb/android/views/StickyButton;

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 762
    return-void

    .line 761
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method protected setupActionbar(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 16
    .param p1, "status"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 947
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 948
    .local v0, "activity":Landroid/app/Activity;
    const/4 v5, 0x0

    .line 950
    .local v5, "roActivity":Lcom/airbnb/android/activities/AirActivity;
    instance-of v7, v0, Lcom/airbnb/android/activities/AirActivity;

    if-eqz v7, :cond_2a

    move-object v5, v0

    .line 951
    check-cast v5, Lcom/airbnb/android/activities/AirActivity;

    .line 956
    if-eqz p1, :cond_14

    sget-object v7, Lcom/airbnb/android/models/ReservationStatus;->Unknown:Lcom/airbnb/android/models/ReservationStatus;

    if-ne p1, v7, :cond_2f

    .line 957
    :cond_14
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isMyProfile()Z

    move-result v7

    if-eqz v7, :cond_2b

    const v7, 0x7f0e0536

    :goto_1d
    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v9}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-virtual {v5, v7, v8}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 986
    :cond_2a
    :goto_2a
    return-void

    .line 957
    :cond_2b
    const v7, 0x7f0e067b

    goto :goto_1d

    .line 960
    :cond_2f
    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v7, :cond_db

    .line 961
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0e00a6

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, "bullet":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0039

    iget-object v9, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v9

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v11}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 964
    .local v3, "numNights":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 965
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v2

    .line 966
    .local v2, "numGuests":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d002d

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v2, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    iget-boolean v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mHostMode:Z

    if-eqz v7, :cond_d4

    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getPayoutPriceNative()I

    move-result v4

    .line 970
    .local v4, "price":I
    :goto_90
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v8

    int-to-double v9, v4

    invoke-virtual {v8, v9, v10, v12}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v7

    if-eqz v7, :cond_c1

    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c1

    .line 974
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    :cond_c1
    if-eqz v5, :cond_2a

    .line 978
    invoke-virtual {p1}, Lcom/airbnb/android/models/ReservationStatus;->getDisplayStringId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/ROContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;

    goto/16 :goto_2a

    .line 969
    .end local v4    # "price":I
    :cond_d4
    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v4

    goto :goto_90

    .line 982
    .end local v1    # "bullet":Ljava/lang/String;
    .end local v2    # "numGuests":I
    .end local v3    # "numNights":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_db
    if-eqz v5, :cond_2a

    .line 983
    invoke-virtual {p1}, Lcom/airbnb/android/models/ReservationStatus;->getDisplayStringId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/ROContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;

    goto/16 :goto_2a
.end method

.method public shouldShowROProfileDetailsInProfile()Z
    .registers 2

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mIsWideMode:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isSingleTab()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public showProfileDetailsFragment()V
    .registers 11

    .prologue
    .line 917
    invoke-static {}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->newInstance()Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    move-result-object v0

    .line 918
    .local v0, "fragment":Lcom/airbnb/android/fragments/ProfileDetailsFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f08028b

    const-string/jumbo v3, "tablet_mode"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 919
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 920
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getReservationId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getThreadId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    iget-object v8, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    iget-object v9, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-static {v6, v7, v8, v9}, Lcom/airbnb/android/fragments/ROProfileFragment;->getUserType(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;)Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->setUser(Lcom/airbnb/android/models/User;JJLcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;)V

    .line 921
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1558
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1562
    :goto_d
    return-void

    .line 1560
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/AirFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d
.end method

.method protected updateProfileImage(Ljava/lang/String;)V
    .registers 3
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->updateDisplayImage(Ljava/lang/String;Z)V

    .line 578
    return-void
.end method
