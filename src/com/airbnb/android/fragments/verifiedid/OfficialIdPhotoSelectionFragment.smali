.class public Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;
.super Landroid/support/v4/app/Fragment;
.source "OfficialIdPhotoSelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final BACK_IMAGE_FILE_NAME:Ljava/lang/String; = "backOfficialIdPic.png"

.field private static final FRONT_IMAGE_FILE_NAME:Ljava/lang/String; = "frontOfficialIdPic.png"

.field private static final OFFICIAL_ID_CHOOSE_PHOTO_BACK_REQUEST:I = 0x985d

.field private static final OFFICIAL_ID_CHOOSE_PHOTO_FRONT_REQUEST:I = 0x985c

.field private static final OFFICIAL_ID_TAKE_PHOTO_BACK_REQUEST:I = 0x985b

.field private static final OFFICIAL_ID_TAKE_PHOTO_FRONT_REQUEST:I = 0x985a

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChoosePhotoButton:Landroid/widget/Button;

.field private mPhotoInstructions:Landroid/widget/TextView;

.field private mTakePhotoButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z

    move-result v0

    return v0
.end method

.method private getIsFrontId()Z
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->isCapturingFrontId()Z

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;
    .registers 1

    .prologue
    .line 55
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 226
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 141
    const/4 v5, -0x1

    if-ne p2, v5, :cond_15

    .line 142
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    .line 144
    .local v0, "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    packed-switch p1, :pswitch_data_86

    .line 214
    sget-object v5, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Invalid Request Code"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    :cond_15
    :goto_15
    return-void

    .line 147
    .restart local v0    # "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    :pswitch_16
    :try_start_16
    const-string/jumbo v5, "frontOfficialIdPic.png"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/airbnb/android/utils/CameraHelper;->getTempFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 148
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/airbnb/android/activities/OfficialIdActivity;->setIdFrontUriString(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2c} :catch_30

    .line 152
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_2c
    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToPhotoConfirmFront()V

    goto :goto_15

    .line 149
    :catch_30
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2c

    .line 156
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :pswitch_35
    :try_start_35
    const-string/jumbo v5, "backOfficialIdPic.png"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/airbnb/android/utils/CameraHelper;->getTempFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 157
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/airbnb/android/activities/OfficialIdActivity;->setIdBackUriString(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_4b} :catch_4f

    .line 161
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_4b
    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToPhotoConfirmBack()V

    goto :goto_15

    .line 158
    :catch_4f
    move-exception v1

    .line 159
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4b

    .line 164
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :pswitch_54
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 165
    .local v4, "uriFront":Landroid/net/Uri;
    new-instance v5, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$3;

    invoke-direct {v5, p0, v4}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$3;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;Landroid/net/Uri;)V

    new-array v6, v6, [Ljava/lang/Void;

    instance-of v7, v5, Landroid/os/AsyncTask;

    if-nez v7, :cond_67

    invoke-virtual {v5, v6}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_15

    :cond_67
    check-cast v5, Landroid/os/AsyncTask;

    invoke-static {v5, v6}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_15

    .line 189
    .end local v4    # "uriFront":Landroid/net/Uri;
    :pswitch_6d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 190
    .local v3, "uriBack":Landroid/net/Uri;
    new-instance v5, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$4;

    invoke-direct {v5, p0, v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$4;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;Landroid/net/Uri;)V

    new-array v6, v6, [Ljava/lang/Void;

    instance-of v7, v5, Landroid/os/AsyncTask;

    if-nez v7, :cond_80

    invoke-virtual {v5, v6}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_15

    :cond_80
    check-cast v5, Landroid/os/AsyncTask;

    invoke-static {v5, v6}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_15

    .line 144
    :pswitch_data_86
    .packed-switch 0x985a
        :pswitch_16
        :pswitch_35
        :pswitch_54
        :pswitch_6d
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v6, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v7, "OfficialIdPhotoSelectionFragment#onCreateView"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_af

    .line 60
    :goto_a
    const v5, 0x7f0300c9

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 62
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    .line 64
    .local v0, "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    const v5, 0x7f080237

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->mPhotoInstructions:Landroid/widget/TextView;

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "instructions":Ljava/lang/String;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 68
    const-string/jumbo v5, "ID_CARD"

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 69
    const v5, 0x7f0e07d0

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_3d
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->mPhotoInstructions:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v5, 0x7f080238

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->mTakePhotoButton:Landroid/widget/Button;

    .line 80
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->mTakePhotoButton:Landroid/widget/Button;

    new-instance v7, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z

    move-result v5

    if-eqz v5, :cond_cc

    const v5, 0x7f0e07d6

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "takePhotoButtonText":Ljava/lang/String;
    :goto_64
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->mTakePhotoButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v5, 0x7f080239

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->mChoosePhotoButton:Landroid/widget/Button;

    .line 108
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->mChoosePhotoButton:Landroid/widget/Button;

    new-instance v7, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v5, 0x7f08023a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 127
    .local v3, "typesOfGovernmentIdsTextView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z

    move-result v5

    if-eqz v5, :cond_d4

    const-string/jumbo v5, "ID_CARD"

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    move v5, v6

    :goto_9b
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getIsFrontId()Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 131
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoFrontView(Lcom/airbnb/android/utils/Strap;)V

    .line 136
    :goto_ab
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v4

    .line 4294967295
    .end local v0    # "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    .end local v1    # "instructions":Ljava/lang/String;
    .end local v2    # "takePhotoButtonText":Ljava/lang/String;
    .end local v3    # "typesOfGovernmentIdsTextView":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :catch_af
    move-exception v5

    const/4 v5, 0x0

    :try_start_b1
    const-string/jumbo v7, "OfficialIdPhotoSelectionFragment#onCreateView"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_b8} :catch_af

    goto/16 :goto_a

    .line 71
    .restart local v0    # "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    .restart local v1    # "instructions":Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_ba
    const v5, 0x7f0e07cf

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 74
    :cond_c3
    const v5, 0x7f0e07ce

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 102
    :cond_cc
    const v5, 0x7f0e07d5

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_64

    .line 127
    .restart local v2    # "takePhotoButtonText":Ljava/lang/String;
    .restart local v3    # "typesOfGovernmentIdsTextView":Landroid/widget/TextView;
    :cond_d4
    const/16 v5, 0x8

    goto :goto_9b

    .line 133
    :cond_d7
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoBackView(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_ab
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
