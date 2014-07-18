.class public Lcom/airbnb/android/fragments/ContactHostFragment;
.super Lcom/airbnb/android/fragments/CannedMessageFragmentBase;
.source "ContactHostFragment.java"


# static fields
.field private static final ARG_CHECKIN_DATE:Ljava/lang/String; = "checkin_date"

.field private static final ARG_CHECKOUT_DATE:Ljava/lang/String; = "checkout_date"

.field private static final ARG_GUEST_COUNT:Ljava/lang/String; = "guest_count"

.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final ARG_SEARCH_DATES:Ljava/lang/String; = "search_dates"

.field private static final DELAY_SCROLL_TO_BOTTOM:I = 0xfa

.field private static final DIALOG_ERROR:Ljava/lang/String; = "error_dialog"

.field private static final DIALOG_SENDING_INQUIRY:Ljava/lang/String; = "sending_inqury_dialog"

.field private static final INQUIRY_SENT_DIALOG_DELAY:I = 0x1f4


# instance fields
.field private mCheckInDate:Ljava/util/Calendar;

.field private mCheckOutDate:Ljava/util/Calendar;

.field private mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

.field private mGuestCount:I

.field private mIsWideMode:Z

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mMessageSection:Landroid/view/View;

.field private mMessageTextWatcher:Landroid/text/TextWatcher;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStickyButton:Lcom/airbnb/android/views/StickyButton;

.field private mSubmittedInquiry:Z

.field private mUseSearchDates:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mGuestCount:I

    .line 410
    new-instance v0, Lcom/airbnb/android/fragments/ContactHostFragment$9;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ContactHostFragment$9;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mMessageTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ContactHostFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/ContactHostFragment;)Lcom/airbnb/android/views/StickyButton;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/ContactHostFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mGuestCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->checkAndEnableSendButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->refreshDatesAndGuestCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ContactHostFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mMessageSection:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->scrollToBottom()V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ContactHostFragment;)Landroid/widget/ScrollView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/ContactHostFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mIsWideMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->sendInquiry()V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/ContactHostFragment;)Lcom/airbnb/android/utils/Strap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->makeInquiryAnalyticsParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/airbnb/android/fragments/ContactHostFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ContactHostFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mSubmittedInquiry:Z

    return p1
.end method

.method private checkAndEnableSendButton()V
    .registers 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 429
    return-void

    .line 428
    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private makeInquiryAnalyticsParams()Lcom/airbnb/android/utils/Strap;
    .registers 6

    .prologue
    .line 432
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "CHECKIN_DATE"

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "CHECKOUT_DATE"

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE"

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_LENGTH"

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "GUEST_COUNT"

    iget v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mGuestCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 438
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/ContactHostFragment;
    .registers 5
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "useSearchDates"    # Z

    .prologue
    .line 84
    new-instance v1, Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;-><init>()V

    .line 85
    .local v1, "f":Lcom/airbnb/android/fragments/ContactHostFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    const-string/jumbo v2, "search_dates"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v1
.end method

.method private refreshDatesAndGuestCount()V
    .registers 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckInDate(Ljava/util/Calendar;)V

    .line 405
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckOutDate(Ljava/util/Calendar;)V

    .line 407
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->checkAndEnableSendButton()V

    .line 408
    return-void
.end method

.method private scrollToBottom()V
    .registers 5

    .prologue
    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/ContactHostFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ContactHostFragment$5;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    return-void
.end method

.method private sendInquiry()V
    .registers 12

    .prologue
    const v5, 0x7f0e06e6

    const/4 v4, 0x0

    .line 321
    const-string/jumbo v0, "guest"

    const-string/jumbo v2, "mobile_recommended_listings_relaunch"

    const-string/jumbo v3, "enabled"

    invoke-static {v0, v2, v3}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 322
    .local v9, "showRecommendations":Z
    if-eqz v9, :cond_7d

    const v0, 0x7f0e05f7

    invoke-static {v5, v4, v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(III)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v8

    .line 325
    .local v8, "fragment":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    :goto_1a
    invoke-virtual {v8, v9}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setCancelable(Z)V

    .line 326
    new-instance v0, Lcom/airbnb/android/fragments/ContactHostFragment$7;

    invoke-direct {v0, p0, v9, v8}, Lcom/airbnb/android/fragments/ContactHostFragment$7;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment;ZLcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-virtual {v8, v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 341
    const/16 v0, 0x191

    invoke-virtual {v8, p0, v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 342
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "sending_inqury_dialog"

    invoke-virtual {v8, v0, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "inquiryMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0e00c6

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ContactHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, "tokenizedMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/airbnb/android/utils/SharedPrefsHelper;->saveLastInquiryMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-static {v0, v2}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 349
    new-instance v0, Lcom/airbnb/android/requests/CreateInquiryRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    iget v6, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mGuestCount:I

    new-instance v7, Lcom/airbnb/android/fragments/ContactHostFragment$8;

    invoke-direct {v7, p0, v9, v8}, Lcom/airbnb/android/fragments/ContactHostFragment$8;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment;ZLcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/requests/CreateInquiryRequest;-><init>(Ljava/lang/String;JLjava/util/Calendar;Ljava/util/Calendar;ILcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/CreateInquiryRequest;->execute()V

    .line 394
    return-void

    .line 322
    .end local v1    # "inquiryMessage":Ljava/lang/String;
    .end local v8    # "fragment":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .end local v10    # "tokenizedMsg":Ljava/lang/String;
    :cond_7d
    invoke-static {v5, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v8

    goto :goto_1a
.end method

.method private setStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .registers 4
    .param p1, "startTime"    # Ljava/util/Calendar;
    .param p2, "endTime"    # Ljava/util/Calendar;
    .param p3, "duration"    # I

    .prologue
    .line 397
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 398
    iput-object p2, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 400
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->refreshDatesAndGuestCount()V

    .line 401
    return-void
.end method

.method private setupMessageBox()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 293
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->getLastInquiryMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "lastInquiryMsg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 295
    iput-boolean v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mShouldAutoHighlightInputText:Z

    .line 296
    const v1, 0x7f0e00c6

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_2b
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    const v2, 0x7f0e0130

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/fragments/ContactHostFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mMessageTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 301
    return-void
.end method

.method private setupStickyButton()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e0131

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 307
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/ContactHostFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ContactHostFragment$6;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    return-void
.end method


# virtual methods
.method getTrackingPage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    const-string/jumbo v0, "contact_host"

    return-object v0
.end method

.method isInputTextClearable()Z
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 443
    const/4 v7, -0x1

    if-ne p2, v7, :cond_a2

    .line 444
    sparse-switch p1, :sswitch_data_a8

    .line 473
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 478
    :cond_d
    :goto_d
    return-void

    .line 446
    :sswitch_e
    const-string/jumbo v7, "start_time"

    invoke-virtual {p3, v7, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 447
    .local v5, "startTime":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v4

    .line 448
    .local v4, "startCalendar":Ljava/util/Calendar;
    const-string/jumbo v7, "end_time"

    invoke-virtual {p3, v7, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 449
    .local v2, "endTime":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v1

    .line 450
    .local v1, "endCalendar":Ljava/util/Calendar;
    const-string/jumbo v7, "duration"

    const/4 v8, 0x1

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 451
    .local v0, "duration":I
    invoke-direct {p0, v4, v1, v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->setStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;I)V

    goto :goto_d

    .line 455
    .end local v0    # "duration":I
    .end local v1    # "endCalendar":Ljava/util/Calendar;
    .end local v2    # "endTime":J
    .end local v4    # "startCalendar":Ljava/util/Calendar;
    .end local v5    # "startTime":J
    :sswitch_38
    const-string/jumbo v7, "click_positive_button"

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 457
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    const-string/jumbo v8, "page"

    const-string/jumbo v9, "contact_host"

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 458
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/airbnb/android/activities/RecommendedListingsActivity;

    iget-object v9, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->bundleWithListingId(J)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/airbnb/android/activities/SolitAirActivity;->intentForBundle(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/ContactHostFragment;->startActivity(Landroid/content/Intent;)V

    .line 460
    const-string/jumbo v7, "click_recommendations_btn"

    const-string/jumbo v8, "click"

    const-string/jumbo v9, "recommendations_btn"

    invoke-static {v7, v8, v9, v11}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackContactHostAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 467
    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 468
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_d

    .line 462
    :cond_83
    const-string/jumbo v7, "click_negative_button"

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_95

    const-string/jumbo v7, "click_cancel"

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 465
    :cond_95
    const-string/jumbo v7, "click_cancel_btn"

    const-string/jumbo v8, "click"

    const-string/jumbo v9, "cancel_btn"

    invoke-static {v7, v8, v9, v11}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackContactHostAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_75

    .line 476
    :cond_a2
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_d

    .line 444
    nop

    :sswitch_data_a8
    .sparse-switch
        0x65 -> :sswitch_e
        0x191 -> :sswitch_38
    .end sparse-switch
.end method

.method onCannedMessageButtonClicked(Z)V
    .registers 2
    .param p1, "showCannedMessages"    # Z

    .prologue
    .line 228
    if-eqz p1, :cond_5

    .line 229
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->scrollToBottom()V

    .line 231
    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mIsWideMode:Z

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "listing"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Listing;

    iput-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "search_dates"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mUseSearchDates:Z

    .line 101
    if-eqz p1, :cond_67

    .line 102
    const-string/jumbo v5, "guest_count"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mGuestCount:I

    .line 103
    const-string/jumbo v5, "checkin_date"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 104
    .local v0, "checkinTime":J
    cmp-long v5, v0, v8

    if-lez v5, :cond_50

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 106
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 108
    :cond_50
    const-string/jumbo v5, "checkout_date"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 109
    .local v2, "checkoutTime":J
    cmp-long v5, v2, v8

    if-lez v5, :cond_66

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 111
    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 119
    .end local v0    # "checkinTime":J
    .end local v2    # "checkoutTime":J
    :cond_66
    :goto_66
    return-void

    .line 113
    :cond_67
    iget-boolean v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mUseSearchDates:Z

    if-eqz v5, :cond_66

    .line 114
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v4

    .line 115
    .local v4, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v4}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 116
    invoke-virtual {v4}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 117
    invoke-virtual {v4}, Lcom/airbnb/android/models/SearchInfo;->getGuestCount()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mGuestCount:I

    goto :goto_66
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 137
    const v0, 0x7f030084

    invoke-virtual {p1, v0, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 138
    .local v9, "v":Landroid/view/View;
    invoke-static {p0, v9}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 140
    const v0, 0x7f080147

    invoke-static {v9, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 141
    const v0, 0x7f0804f0

    invoke-static {v9, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    .line 142
    const v0, 0x7f08012b

    invoke-static {v9, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 144
    new-instance v8, Lcom/airbnb/android/fragments/ContactHostFragment$1;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/ContactHostFragment$1;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    .line 158
    .local v8, "onTouch":Landroid/view/View$OnTouchListener;
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    const v0, 0x7f08014b

    invoke-static {v9, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/DateAndGuestCountView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    .line 161
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    new-instance v1, Lcom/airbnb/android/fragments/ContactHostFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ContactHostFragment$2;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    iget v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mGuestCount:I

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/android/views/DateAndGuestCountView;->init(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;IILjava/util/Calendar;Ljava/util/Calendar;Lcom/airbnb/android/models/SpecialOffer;Z)V

    .line 193
    const v0, 0x7f08014a

    invoke-static {v9, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    new-instance v1, Lcom/airbnb/android/adapters/ListingsRowAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    sget-object v3, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/adapters/ListingsRowAdapter;-><init>(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    const v0, 0x7f0804ee

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mMessageSection:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mMessageSection:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/fragments/ContactHostFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ContactHostFragment$3;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->setupStickyButton()V

    .line 207
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->setupCannedMessageAdapter(Landroid/view/View;Lcom/airbnb/android/models/User;)V

    .line 208
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->setupMessageBox()V

    .line 209
    invoke-virtual {p0, v10}, Lcom/airbnb/android/fragments/ContactHostFragment;->loadCannedMessages(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->setupCannedMessageButton()V

    .line 212
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/ContactHostFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ContactHostFragment$4;-><init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 220
    invoke-virtual {p0, v9}, Lcom/airbnb/android/fragments/ContactHostFragment;->setupGlobalLayoutListener(Landroid/view/View;)V

    .line 221
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->checkAndEnableSendButton()V

    .line 223
    return-object v9
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 287
    invoke-super {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onDestroyView()V

    .line 289
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mInputEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mMessageTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    return-void
.end method

.method protected onInputTextFocus(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onInputTextFocus(Z)V

    .line 246
    if-eqz p1, :cond_8

    .line 247
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->scrollToBottom()V

    .line 249
    :cond_8
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 280
    invoke-super {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onPause()V

    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryGeneralExit(Lcom/airbnb/android/utils/Strap;)V

    .line 283
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onResume()V

    .line 271
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mSubmittedInquiry:Z

    if-eqz v0, :cond_e

    .line 272
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 275
    :cond_e
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryGeneralView(Lcom/airbnb/android/utils/Strap;)V

    .line 276
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string/jumbo v0, "guest_count"

    iget v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mGuestCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1b

    .line 127
    const-string/jumbo v0, "checkin_date"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 130
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    if-eqz v0, :cond_2b

    .line 131
    const-string/jumbo v0, "checkout_date"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 133
    :cond_2b
    return-void
.end method
