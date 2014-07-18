.class public Lcom/airbnb/android/fragments/ROResponseDialogFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ROResponseDialogFragment.java"


# static fields
.field private static final ACTION_ITEMS:Ljava/lang/String; = "action_items"

.field private static final ARG_FOR_RESERVATION_REQUEST:Ljava/lang/String; = "reservation_request"

.field private static final ARG_MSG_THREAD:Ljava/lang/String; = "ro_msg_thread"

.field private static final ARG_RESERVATION:Ljava/lang/String; = "ro_reservation"

.field private static final DIALOG_SUBTITLE:Ljava/lang/String; = "dialog_subtitle"

.field private static final DIALOG_TITLE_RES:Ljava/lang/String; = "dialog_title_res"

.field private static final FLIP_ANIM_DURATION:I = 0x64

.field public static final RESULT_FOR_DECLINE:Ljava/lang/String; = "for_decline"

.field public static final RESULT_GUEST_NAME:Ljava/lang/String; = "guest_name"

.field public static final RESULT_LISTING_ID:Ljava/lang/String; = "listing_id"

.field public static final RESULT_SEND_SPECIAL_OFFER:Ljava/lang/String; = "send_special_offer"

.field public static final RESULT_THREAD:Ljava/lang/String; = "thread"

.field public static final RESULT_THREAD_ID:Ljava/lang/String; = "thread_id"


# instance fields
.field private mDialogBackHeightSet:Z

.field private mForReservationRequest:Z

.field private mMessageThread:Lcom/airbnb/android/models/MessageThread;

.field private mReservation:Lcom/airbnb/android/models/Reservation;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->handleAcceptOrDeclineReservation(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->handlePreApproveOrDeclineInquiry(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->handleSpecialOffer()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mForReservationRequest:Z

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getReservationId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getThreadId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mDialogBackHeightSet:Z

    return v0
.end method

.method static synthetic access$702(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mDialogBackHeightSet:Z

    return p1
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Lcom/airbnb/android/models/MessageThread;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    return-object v0
.end method

.method private static createSubtitle(Landroid/content/Context;Lcom/airbnb/android/models/MessageThread;)Ljava/lang/String;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgThread"    # Lcom/airbnb/android/models/MessageThread;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 104
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "userName":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const v9, 0x7f0e013d

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckinDate()Ljava/util/Date;

    move-result-object v0

    .line 107
    .local v0, "checkInDate":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckoutDate()Ljava/util/Date;

    move-result-object v1

    .line 108
    .local v1, "checkOutDate":Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/airbnb/android/utils/DateHelper;->dayCount(Ljava/util/Date;Ljava/util/Date;)I

    move-result v5

    .line 109
    .local v5, "nights":I
    invoke-static {p0}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v9

    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getInquiryPriceNative()I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9, v10, v11, v13}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "price":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "formattedCheckInDate":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "formattedCheckOutDate":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0023

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    const/4 v12, 0x4

    aput-object v6, v11, v12

    invoke-virtual {v9, v10, v5, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "subtitle":Ljava/lang/String;
    return-object v7
.end method

.method private getReservationId()J
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method private getThreadId()J
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v0}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method private handleAcceptOrDeclineReservation(Z)V
    .registers 9
    .param p1, "forDecline"    # Z

    .prologue
    .line 223
    if-eqz p1, :cond_46

    const-string/jumbo v2, "click_decline"

    :goto_5
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getReservationId()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getThreadId()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowSelectOptionForReservation(Ljava/lang/String;JJ)V

    .line 224
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 226
    if-eqz p1, :cond_4a

    const v1, 0x7f0e068d

    .line 228
    .local v1, "messageRes":I
    :goto_1d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getOtherUserFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e085b

    const v4, 0x7f0e0544

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->newInstance(Ljava/lang/String;II)Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    move-result-object v0

    .line 230
    .local v0, "confirmDialog":Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    new-instance v2, Lcom/airbnb/android/fragments/ROResponseDialogFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/android/fragments/ROResponseDialogFragment$4;-><init>(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)V

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->setDualButtonDialogListener(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;)V

    .line 247
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 248
    return-void

    .line 223
    .end local v0    # "confirmDialog":Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    .end local v1    # "messageRes":I
    :cond_46
    const-string/jumbo v2, "click_accept"

    goto :goto_5

    .line 226
    :cond_4a
    const v1, 0x7f0e068a

    goto :goto_1d
.end method

.method private handlePreApproveOrDeclineInquiry(Z)V
    .registers 9
    .param p1, "forDecline"    # Z

    .prologue
    .line 251
    if-eqz p1, :cond_46

    const-string/jumbo v2, "click_decline"

    :goto_5
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getReservationId()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getThreadId()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowSelectOptionForInquiry(Ljava/lang/String;JJ)V

    .line 252
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    if-eqz p1, :cond_4a

    const v1, 0x7f0e0690

    .line 255
    .local v1, "messageRes":I
    :goto_1d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getOtherUserFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e085b

    const v4, 0x7f0e0544

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->newInstance(Ljava/lang/String;II)Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    move-result-object v0

    .line 257
    .local v0, "confirmDialog":Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    new-instance v2, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/android/fragments/ROResponseDialogFragment$5;-><init>(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)V

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->setDualButtonDialogListener(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;)V

    .line 276
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 277
    return-void

    .line 251
    .end local v0    # "confirmDialog":Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;
    .end local v1    # "messageRes":I
    :cond_46
    const-string/jumbo v2, "click_pre_approve"

    goto :goto_5

    .line 253
    :cond_4a
    const v1, 0x7f0e069e

    goto :goto_1d
.end method

.method private handleSpecialOffer()V
    .registers 4

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "thread"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v1, "send_special_offer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 284
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 285
    return-void
.end method

.method private static makeNewInstance(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/airbnb/android/fragments/ROResponseDialogFragment;
    .registers 9
    .param p0, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p1, "messageThread"    # Lcom/airbnb/android/models/MessageThread;
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p4, "forReservationRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/Reservation;",
            "Lcom/airbnb/android/models/MessageThread;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;Z)",
            "Lcom/airbnb/android/fragments/ROResponseDialogFragment;"
        }
    .end annotation

    .prologue
    .line 90
    .local p3, "actionItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/ActionItem;>;"
    new-instance v1, Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;-><init>()V

    .line 91
    .local v1, "f":Lcom/airbnb/android/fragments/ROResponseDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "dialog_title_res"

    const v3, 0x7f0e0697

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string/jumbo v2, "dialog_subtitle"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v2, "action_items"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 95
    const-string/jumbo v2, "ro_reservation"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    const-string/jumbo v2, "ro_msg_thread"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    const-string/jumbo v2, "reservation_request"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    return-object v1
.end method

.method public static newInstance(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Z)Lcom/airbnb/android/fragments/ROResponseDialogFragment;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "messageThread"    # Lcom/airbnb/android/models/MessageThread;
    .param p3, "forReservationRequest"    # Z

    .prologue
    const v9, 0x7f0201f0

    const v5, 0x7f02011c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0a002b

    .line 70
    if-eqz p3, :cond_49

    .line 72
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "userName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "listing":Ljava/lang/String;
    const v3, 0x7f0e0695

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "subtitle":Ljava/lang/String;
    invoke-static {p0}, Lcom/airbnb/android/models/ActionItem;->make(Landroid/content/Context;)Lcom/airbnb/android/models/ActionItem;

    move-result-object v3

    const v4, 0x7f0e0689

    invoke-virtual {v3, v5, v6, v4}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    move-result-object v3

    const v4, 0x7f0a0014

    const v5, 0x7f0e068c

    invoke-virtual {v3, v9, v4, v5}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/ActionItem;->toList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1, p2, v1, v3, v8}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->makeNewInstance(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    move-result-object v3

    .line 81
    .end local v0    # "listing":Ljava/lang/String;
    .end local v2    # "userName":Ljava/lang/String;
    :goto_48
    return-object v3

    .line 80
    .end local v1    # "subtitle":Ljava/lang/String;
    :cond_49
    invoke-static {p0, p2}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->createSubtitle(Landroid/content/Context;Lcom/airbnb/android/models/MessageThread;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1    # "subtitle":Ljava/lang/String;
    invoke-static {p0}, Lcom/airbnb/android/models/ActionItem;->make(Landroid/content/Context;)Lcom/airbnb/android/models/ActionItem;

    move-result-object v3

    const v4, 0x7f0e069d

    invoke-virtual {v3, v5, v6, v4}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    move-result-object v3

    const v4, 0x7f0201f1

    const v5, 0x7f0e06a2

    invoke-virtual {v3, v4, v6, v5}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    move-result-object v3

    const v4, 0x7f0a0014

    const v5, 0x7f0e068f

    invoke-virtual {v3, v9, v4, v5}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/ActionItem;->toList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1, p2, v1, v3, v7}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->makeNewInstance(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    move-result-object v3

    goto :goto_48
.end method


# virtual methods
.method public getOtherUserFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v0}, Lcom/airbnb/android/models/MessageThread;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ro_reservation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 121
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ro_msg_thread"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/MessageThread;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    .line 122
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "reservation_request"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mForReservationRequest:Z

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    const v3, 0x7f0300e4

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "v":Landroid/view/View;
    const v3, 0x7f08001f

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "dialog_title_res"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(I)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v15, "dialog_subtitle"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, "subtitle":Ljava/lang/String;
    const v3, 0x7f080020

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 132
    .local v14, "subtitleTextView":Landroid/widget/TextView;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 133
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_40
    const v3, 0x7f080021

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 139
    .local v12, "listView":Landroid/widget/ListView;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v15, "action_items"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 140
    .local v8, "actionItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/ActionItem;>;"
    new-instance v3, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    const v16, 0x7f03012d

    move/from16 v0, v16

    invoke-direct {v3, v15, v0, v8}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v12, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    new-instance v3, Lcom/airbnb/android/fragments/ROResponseDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)V

    invoke-virtual {v12, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    const v3, 0x7f080022

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 173
    .local v9, "cancelButton":Landroid/widget/TextView;
    new-instance v3, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v3, 0x7f08028d

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ViewAnimator;

    .line 189
    .local v7, "viewFlipper":Landroid/widget/ViewAnimator;
    const v3, 0x7f080290

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 190
    .local v5, "dialogBack":Landroid/widget/FrameLayout;
    const v3, 0x7f0804a4

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 191
    .local v6, "educationScrollContainer":Landroid/widget/ScrollView;
    const v3, 0x7f08028f

    invoke-static {v4, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 192
    .local v11, "flipButtonFront":Landroid/widget/ImageView;
    const v3, 0x7f0804a8

    invoke-static {v4, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 194
    .local v10, "flipButtonBack":Landroid/widget/ImageView;
    new-instance v2, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;-><init>(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ScrollView;Landroid/widget/ViewAnimator;)V

    .line 213
    .local v2, "onClick":Landroid/view/View$OnClickListener;
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-object v4

    .line 135
    .end local v2    # "onClick":Landroid/view/View$OnClickListener;
    .end local v5    # "dialogBack":Landroid/widget/FrameLayout;
    .end local v6    # "educationScrollContainer":Landroid/widget/ScrollView;
    .end local v7    # "viewFlipper":Landroid/widget/ViewAnimator;
    .end local v8    # "actionItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/ActionItem;>;"
    .end local v9    # "cancelButton":Landroid/widget/TextView;
    .end local v10    # "flipButtonBack":Landroid/widget/ImageView;
    .end local v11    # "flipButtonFront":Landroid/widget/ImageView;
    .end local v12    # "listView":Landroid/widget/ListView;
    :cond_bd
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_40
.end method
