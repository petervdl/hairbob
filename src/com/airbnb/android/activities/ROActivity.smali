.class public Lcom/airbnb/android/activities/ROActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ROActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/ROActivity$ROIntentErrorDialog;,
        Lcom/airbnb/android/activities/ROActivity$LaunchState;
    }
.end annotation


# static fields
.field private static final EXTRA_ENABLE_WIDE_MODE:Ljava/lang/String; = "wide_mode"

.field private static final INVALID_ID:I = -0x1

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final LOGIN_REQUEST:I = 0x156

.field public static final PENDING_INTENT_ACCEPT:I = 0x2

.field public static final PENDING_INTENT_DEFAULT:I = 0x0

.field public static final PENDING_INTENT_ITINERARY:I = 0x3

.field public static final PENDING_INTENT_MESSAGE:I = 0x1

.field public static final SOURCE_HH_WIDGET:Ljava/lang/String; = "hh_widget"

.field private static final TAG:Ljava/lang/String;

.field public static final WIDGET_PENDING_INTENT_REQUEST_CODE:I = 0x32


# instance fields
.field private mConfirmationCode:Ljava/lang/String;

.field private mEnableWideMode:Z

.field private mReloadOnResume:Z

.field private mReservationId:J

.field private mSource:Ljava/lang/String;

.field private mThreadId:J

.field private mUserId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/airbnb/android/activities/ROActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/ROActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 374
    return-void
.end method

.method private getMessageText(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    invoke-static {p1}, Landroid/support/v4/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 174
    .local v0, "remoteInput":Landroid/os/Bundle;
    if-eqz v0, :cond_e

    .line 175
    const-string/jumbo v1, "extra_voice_reply"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private getParentIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 356
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private handleItineraryWebIntent(Landroid/net/Uri;)Z
    .registers 9
    .param p1, "intentData"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 295
    const-string/jumbo v4, "code"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "confirmationCode":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->DeepLinking:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v5, v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string/jumbo v5, "app_open"

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string/jumbo v6, "itinerary_intent"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 297
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 299
    .local v1, "confirmationCodeLength":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    const/4 v4, 0x5

    if-lt v1, v4, :cond_3d

    const/16 v4, 0x8

    if-gt v1, v4, :cond_3d

    .line 300
    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->detectAffiliateParams(Landroid/net/Uri;)V

    .line 304
    iput-object v0, p0, Lcom/airbnb/android/activities/ROActivity;->mConfirmationCode:Ljava/lang/String;

    .line 308
    .end local v1    # "confirmationCodeLength":I
    :goto_3c
    return v2

    :cond_3d
    move v2, v3

    goto :goto_3c
.end method

.method private handleThreadWebIntent(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 6
    .param p1, "intentData"    # Landroid/net/Uri;
    .param p2, "threadIdString"    # Ljava/lang/String;

    .prologue
    .line 273
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 274
    .local v0, "threadId":J
    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->detectAffiliateParams(Landroid/net/Uri;)V

    .line 275
    iput-wide v0, p0, Lcom/airbnb/android/activities/ROActivity;->mThreadId:J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_f

    .line 276
    const/4 v2, 0x1

    .line 281
    .end local v0    # "threadId":J
    :goto_e
    return v2

    .line 277
    :catch_f
    move-exception v2

    .line 281
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private handleUpNavigation()V
    .registers 4

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/airbnb/android/activities/ROActivity;->getParentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 344
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 346
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 349
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/ROActivity;->overridePendingTransition(II)V

    .line 353
    :goto_1d
    return-void

    .line 351
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->finish()V

    goto :goto_1d
.end method

.method private handleUserWebIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "reviewIdString"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 312
    if-eqz p1, :cond_1d

    .line 315
    :try_start_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->intentForReviewId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/ROActivity;->startActivity(Landroid/content/Intent;)V

    .line 316
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->finish()V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_11} :catch_12

    .line 330
    :goto_11
    return v1

    .line 318
    :catch_12
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/airbnb/android/activities/ROActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 324
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1d
    :try_start_1d
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/activities/ROActivity;->mUserId:J
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_23} :catch_25

    .line 325
    const/4 v1, 0x1

    goto :goto_11

    .line 326
    :catch_25
    move-exception v0

    .line 327
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/airbnb/android/activities/ROActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private handleUsersWebIntent(Ljava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 286
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/activities/ROActivity;->mUserId:J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_8

    .line 287
    const/4 v1, 0x1

    .line 291
    :goto_7
    return v1

    .line 288
    :catch_8
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/airbnb/android/activities/ROActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static intentForId(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "objId"    # J
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "launchState"    # Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .prologue
    .line 95
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/activities/ROActivity;->intentForId(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static intentForId(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "objId"    # J
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "inquiryFromHH"    # Z
    .param p6, "launchState"    # Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ROActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 106
    invoke-static {v0, p4, p5, p6}, Lcom/airbnb/android/activities/ROActivity;->setIntentParams(Landroid/content/Intent;Ljava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)V

    .line 107
    return-object v0
.end method

.method public static intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-static {p0, p1, p2, v0}, Lcom/airbnb/android/activities/ROActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Ljava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Ljava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "launchState"    # Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ROActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p3}, Lcom/airbnb/android/activities/ROActivity;->setIntentParams(Landroid/content/Intent;Ljava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)V

    .line 118
    return-object v0
.end method

.method public static intentForReservationId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservationId"    # J
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string/jumbo v1, "res_id"

    sget-object v5, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/activities/ROActivity;->intentForId(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentForReservationId(Landroid/content/Context;JLjava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservationId"    # J
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "launchState"    # Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .prologue
    .line 91
    const-string/jumbo v1, "res_id"

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/activities/ROActivity;->intentForId(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentForThreadId(Landroid/content/Context;JLjava/lang/String;Z)Landroid/content/Intent;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "inquiryFromHH"    # Z

    .prologue
    .line 75
    const-string/jumbo v1, "thread_id"

    sget-object v6, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/activities/ROActivity;->intentForId(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentForThreadId(Landroid/content/Context;JLjava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "inquiryFromHH"    # Z
    .param p5, "launchState"    # Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .prologue
    .line 87
    const-string/jumbo v1, "thread_id"

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/activities/ROActivity;->intentForId(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # J
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string/jumbo v1, "user_id"

    sget-object v5, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/activities/ROActivity;->intentForId(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentForUserId(Landroid/content/Context;JLjava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # J
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "launchState"    # Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .prologue
    .line 83
    const-string/jumbo v1, "user_id"

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/activities/ROActivity;->intentForId(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private loadFragment()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    .line 182
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 183
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "wide_mode"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/airbnb/android/activities/ROActivity;->mEnableWideMode:Z

    .line 184
    const-string/jumbo v6, "launch_state"

    sget-object v7, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-virtual {v7}, Lcom/airbnb/android/activities/ROActivity$LaunchState;->ordinal()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 186
    .local v4, "launchState":I
    const/4 v1, 0x0

    .line 187
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iget-wide v6, p0, Lcom/airbnb/android/activities/ROActivity;->mUserId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_96

    .line 188
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 189
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/airbnb/android/activities/ROActivity;->mUserId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_8d

    iget-wide v6, p0, Lcom/airbnb/android/activities/ROActivity;->mUserId:J

    iget-boolean v8, p0, Lcom/airbnb/android/activities/ROActivity;->mEnableWideMode:Z

    invoke-static {v6, v7, v8, v4}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->newInstanceForUserId(JZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v1

    .line 207
    .end local v0    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_41
    :goto_41
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    const-string/jumbo v7, "ro_source"

    iget-object v8, p0, Lcom/airbnb/android/activities/ROActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 211
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_7e

    .line 212
    if-nez v1, :cond_e8

    .line 213
    invoke-static {}, Lcom/airbnb/android/activities/ROActivity$ROIntentErrorDialog;->newInstance()Lcom/airbnb/android/activities/ROActivity$ROIntentErrorDialog;

    move-result-object v6

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/activities/ROActivity$ROIntentErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v6, "reservation_object"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    const-string/jumbo v8, "intent_data"

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    invoke-static {v6, v11, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 220
    :cond_7e
    :goto_7e
    const-string/jumbo v6, "hh_widget"

    iget-object v7, p0, Lcom/airbnb/android/activities/ROActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 221
    invoke-static {}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->trackReservationClick()V

    .line 223
    :cond_8c
    return-void

    .line 189
    .restart local v0    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_8d
    iget-wide v6, p0, Lcom/airbnb/android/activities/ROActivity;->mUserId:J

    iget-boolean v8, p0, Lcom/airbnb/android/activities/ROActivity;->mEnableWideMode:Z

    invoke-static {v6, v7, v8, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->newInstanceForUserId(JZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v1

    goto :goto_41

    .line 193
    .end local v0    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_96
    iget-wide v6, p0, Lcom/airbnb/android/activities/ROActivity;->mThreadId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ac

    .line 194
    const-string/jumbo v6, "from_hh"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 195
    .local v2, "inquiryFromHH":Z
    iget-wide v6, p0, Lcom/airbnb/android/activities/ROActivity;->mThreadId:J

    iget-boolean v8, p0, Lcom/airbnb/android/activities/ROActivity;->mEnableWideMode:Z

    invoke-static {v6, v7, v2, v8, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->newInstanceForThreadId(JZZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v1

    .line 196
    goto :goto_41

    .end local v2    # "inquiryFromHH":Z
    :cond_ac
    iget-wide v6, p0, Lcom/airbnb/android/activities/ROActivity;->mReservationId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_bb

    .line 197
    iget-wide v6, p0, Lcom/airbnb/android/activities/ROActivity;->mReservationId:J

    iget-boolean v8, p0, Lcom/airbnb/android/activities/ROActivity;->mEnableWideMode:Z

    invoke-static {v6, v7, v8, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->newInstanceForReservationId(JZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v1

    goto :goto_41

    .line 198
    :cond_bb
    iget-object v6, p0, Lcom/airbnb/android/activities/ROActivity;->mConfirmationCode:Ljava/lang/String;

    if-eqz v6, :cond_c9

    .line 199
    iget-object v6, p0, Lcom/airbnb/android/activities/ROActivity;->mConfirmationCode:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/airbnb/android/activities/ROActivity;->mEnableWideMode:Z

    invoke-static {v6, v7}, Lcom/airbnb/android/fragments/ROContainerFragment;->newInstanceForConfirmationCode(Ljava/lang/String;Z)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v1

    goto/16 :goto_41

    .line 201
    :cond_c9
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "reservation"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Reservation;

    .line 202
    .local v5, "reservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v5, :cond_41

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_41

    .line 203
    iget-boolean v6, p0, Lcom/airbnb/android/activities/ROActivity;->mEnableWideMode:Z

    invoke-static {v5, v6, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->newInstance(Lcom/airbnb/android/models/Reservation;ZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v1

    goto/16 :goto_41

    .line 216
    .end local v5    # "reservation":Lcom/airbnb/android/models/Reservation;
    :cond_e8
    invoke-virtual {p0, v1, v11}, Lcom/airbnb/android/activities/ROActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_7e
.end method

.method private parseWebIntents()Z
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 237
    .local v0, "intentData":Landroid/net/Uri;
    if-eqz v0, :cond_ed

    .line 238
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 239
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_5e

    const-string/jumbo v2, "users"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 241
    const-string/jumbo v2, "review_id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/airbnb/android/activities/ROActivity;->handleUserWebIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    move v2, v3

    .line 267
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_38
    return v2

    .line 247
    .restart local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_39
    const-string/jumbo v2, "show"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_ed

    .line 249
    const-string/jumbo v2, "review_id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/airbnb/android/activities/ROActivity;->handleUserWebIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_38

    .line 253
    :cond_5e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_83

    const-string/jumbo v2, "itinerary"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    const-string/jumbo v2, "reservations"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 257
    :cond_7e
    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ROActivity;->handleItineraryWebIntent(Landroid/net/Uri;)Z

    move-result v2

    goto :goto_38

    .line 258
    :cond_83
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v6, :cond_a1

    const-string/jumbo v2, "threads"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 259
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/airbnb/android/activities/ROActivity;->handleThreadWebIntent(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    goto :goto_38

    .line 260
    :cond_a1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-lt v2, v5, :cond_ce

    const-string/jumbo v2, "z"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string/jumbo v2, "q"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 261
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/airbnb/android/activities/ROActivity;->handleThreadWebIntent(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_38

    .line 262
    :cond_ce
    const-string/jumbo v2, "users"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ed

    .line 263
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/ROActivity;->handleUsersWebIntent(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_38

    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ed
    move v2, v4

    .line 267
    goto/16 :goto_38
.end method

.method private static setIntentParams(Landroid/content/Intent;Ljava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)V
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "inquiryFromHH"    # Z
    .param p3, "launchState"    # Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .prologue
    .line 122
    const-string/jumbo v0, "source"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v0, "wide_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const-string/jumbo v0, "from_hh"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string/jumbo v0, "launch_state"

    invoke-virtual {p3}, Lcom/airbnb/android/activities/ROActivity$LaunchState;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    return-void
.end method


# virtual methods
.method protected inflateDirectlyIntoActivityContentFrame()Z
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 361
    const/16 v0, 0x156

    if-ne p1, v0, :cond_19

    .line 362
    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/ROActivity;->mReloadOnResume:Z

    .line 372
    :goto_14
    return-void

    .line 366
    :cond_15
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->finish()V

    goto :goto_14

    .line 371
    :cond_19
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/SolitAirActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const-wide/16 v2, -0x1

    .line 131
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "push_notification_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "pushNotificationId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "secret"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, "secret":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "push_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "pushType":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 138
    invoke-static {v9, v11, v10}, Lcom/airbnb/android/requests/PushNotificationConversionRequest;->sendPushNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p0}, Lcom/airbnb/android/services/GCMIntentService;->dismissPushNotification(Landroid/content/Context;)V

    .line 141
    :cond_39
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 143
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "user_id"

    invoke-virtual {v8, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/activities/ROActivity;->mUserId:J

    .line 144
    const-string/jumbo v0, "thread_id"

    invoke-virtual {v8, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/activities/ROActivity;->mThreadId:J

    .line 145
    const-string/jumbo v0, "res_id"

    invoke-virtual {v8, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/activities/ROActivity;->mReservationId:J

    .line 146
    const-string/jumbo v0, "source"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/ROActivity;->mSource:Ljava/lang/String;

    .line 148
    invoke-direct {p0, v8}, Lcom/airbnb/android/activities/ROActivity;->getMessageText(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 149
    .local v12, "wearVoiceInputReply":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 150
    iget-wide v0, p0, Lcom/airbnb/android/activities/ROActivity;->mThreadId:J

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->forMessage(JJJLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->execute()V

    .line 151
    const-string/jumbo v0, "wear_reply"

    iput-object v0, p0, Lcom/airbnb/android/activities/ROActivity;->mSource:Ljava/lang/String;

    .line 155
    :cond_7f
    invoke-direct {p0}, Lcom/airbnb/android/activities/ROActivity;->parseWebIntents()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 156
    const-string/jumbo v0, "web_intent"

    iput-object v0, p0, Lcom/airbnb/android/activities/ROActivity;->mSource:Ljava/lang/String;

    .line 159
    :cond_8a
    new-array v0, v13, [Ljava/lang/Object;

    invoke-virtual {p0, v13, v0}, Lcom/airbnb/android/activities/ROActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 162
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-nez v0, :cond_b0

    iget-wide v0, p0, Lcom/airbnb/android/activities/ROActivity;->mUserId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_b0

    .line 163
    const v0, 0x7f0e0765

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/ROActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v13}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x156

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/ROActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    :cond_af
    :goto_af
    return-void

    .line 167
    :cond_b0
    if-nez p1, :cond_af

    .line 168
    invoke-direct {p0}, Lcom/airbnb/android/activities/ROActivity;->loadFragment()V

    goto :goto_af
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 336
    invoke-direct {p0}, Lcom/airbnb/android/activities/ROActivity;->handleUpNavigation()V

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onResume()V

    .line 229
    iget-boolean v0, p0, Lcom/airbnb/android/activities/ROActivity;->mReloadOnResume:Z

    if-eqz v0, :cond_d

    .line 230
    invoke-direct {p0}, Lcom/airbnb/android/activities/ROActivity;->loadFragment()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/ROActivity;->mReloadOnResume:Z

    .line 233
    :cond_d
    return-void
.end method
