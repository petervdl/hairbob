.class public Lcom/airbnb/android/fragments/managelisting/TermsFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "TermsFragment.java"


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final FRAGMENT_CHECK_IN_TIME:Ljava/lang/String; = "fragment_check_in_time"

.field private static final FRAGMENT_CHECK_OUT_TIME:Ljava/lang/String; = "fragment_check_out_time"

.field private static final FRAGMENT_STAY_LENGTH:Ljava/lang/String; = "fragment_stay_length"

.field private static final REQUEST_CODE_CANCELLATION_POLICY:I = 0x1

.field private static final REQUEST_CODE_CHECKIN_TIME:I = 0x4

.field private static final REQUEST_CODE_CHECKOUT_TIME:I = 0x5

.field private static final REQUEST_CODE_MAX_STAY:I = 0x3

.field private static final REQUEST_CODE_MIN_STAY:I = 0x2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mCancellationPolicy:Lcom/airbnb/android/views/GroupedCell;

.field mCheckinTime:Lcom/airbnb/android/views/GroupedCell;

.field mCheckoutTime:Lcom/airbnb/android/views/GroupedCell;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field mMaximumNightStay:Lcom/airbnb/android/views/GroupedCell;

.field mMinimumNightStay:Lcom/airbnb/android/views/GroupedCell;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method private formatTime(I)Ljava/lang/String;
    .registers 6
    .param p1, "hour"    # I

    .prologue
    .line 183
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 184
    .local v1, "format":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 186
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 187
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hideKeyboard()V
    .registers 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/TermsFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 56
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;-><init>()V

    .line 57
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/TermsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method

.method private setupCancellationPolicy()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCancellationPolicy:Lcom/airbnb/android/views/GroupedCell;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getCancellationPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCancellationPolicy:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method private setupCheckinTime()V
    .registers 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCheckinTime:Lcom/airbnb/android/views/GroupedCell;

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getCheckInTime()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getCheckInTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCheckinTime:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TermsFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void

    .line 123
    :cond_26
    const v0, 0x7f0e01e3

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private setupCheckoutTime()V
    .registers 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCheckoutTime:Lcom/airbnb/android/views/GroupedCell;

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getCheckOutTime()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getCheckOutTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCheckoutTime:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TermsFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void

    .line 139
    :cond_26
    const v0, 0x7f0e01e3

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private setupMaximumStayLength()V
    .registers 8

    .prologue
    .line 169
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mMaximumNightStay:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0039

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getMaxNights()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getMaxNights()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mMaximumNightStay:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TermsFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment$5;-><init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void
.end method

.method private setupMinimumStayLength()V
    .registers 8

    .prologue
    .line 155
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mMinimumNightStay:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0039

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getMinNights()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getMinNights()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mMinimumNightStay:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TermsFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 228
    packed-switch p1, :pswitch_data_88

    .line 267
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 268
    return-void

    .line 230
    :pswitch_9
    if-ne p2, v5, :cond_5

    .line 231
    const-string/jumbo v3, "policy"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/CancellationPolicy;

    .line 232
    .local v2, "policy":Lcom/airbnb/android/models/CancellationPolicy;
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/CancellationPolicy;->getFormattedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/Listing;->setCancellationPolicy(Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/CancellationPolicy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/Listing;->setCancellationPolicyKey(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupCancellationPolicy()V

    goto :goto_5

    .line 238
    .end local v2    # "policy":Lcom/airbnb/android/models/CancellationPolicy;
    :pswitch_2a
    if-ne p2, v5, :cond_3c

    .line 239
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    const-string/jumbo v4, "nights"

    const/4 v5, 0x1

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/Listing;->setMinNights(I)V

    .line 240
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupMinimumStayLength()V

    .line 242
    :cond_3c
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->hideKeyboard()V

    goto :goto_5

    .line 245
    :pswitch_40
    if-ne p2, v5, :cond_53

    .line 246
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    const-string/jumbo v4, "nights"

    const/16 v5, 0x465

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/Listing;->setMaxNights(I)V

    .line 247
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupMaximumStayLength()V

    .line 249
    :cond_53
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->hideKeyboard()V

    goto :goto_5

    .line 252
    :pswitch_57
    if-ne p2, v5, :cond_5

    .line 253
    const-string/jumbo v4, "hour"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, "checkinTime":I
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-ltz v0, :cond_68

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_68
    invoke-virtual {v4, v3}, Lcom/airbnb/android/models/Listing;->setCheckInTime(Ljava/lang/Integer;)V

    .line 255
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupCheckinTime()V

    goto :goto_5

    .line 259
    .end local v0    # "checkinTime":I
    :pswitch_6f
    if-ne p2, v5, :cond_5

    .line 260
    const-string/jumbo v4, "hour"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 261
    .local v1, "checkoutTime":I
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-ltz v1, :cond_80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_80
    invoke-virtual {v4, v3}, Lcom/airbnb/android/models/Listing;->setCheckOutTime(Ljava/lang/Integer;)V

    .line 262
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupCheckoutTime()V

    goto/16 :goto_5

    .line 228
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_9
        :pswitch_2a
        :pswitch_40
        :pswitch_57
        :pswitch_6f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const v1, 0x7f0300c3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupMinimumStayLength()V

    .line 78
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupMaximumStayLength()V

    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupCheckinTime()V

    .line 81
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupCheckoutTime()V

    .line 83
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupCancellationPolicy()V

    .line 85
    return-object v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 199
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 200
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 201
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 204
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 206
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/TermsFragment$6;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment$6;-><init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 217
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 219
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 220
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 222
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 223
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 224
    return-void
.end method
