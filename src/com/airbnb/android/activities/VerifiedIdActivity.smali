.class public Lcom/airbnb/android/activities/VerifiedIdActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "VerifiedIdActivity.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$AnimationCompletionListener;
.implements Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment$VerifiedIdDialogFragment;
.implements Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/VerifiedIdActivity$3;,
        Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;
    }
.end annotation


# static fields
.field public static final COMPLETE_PROFILE_REQUEST:I = 0x9858

.field private static final CURRENT_STEP:Ljava/lang/String; = "current_step"

.field public static final DEEP_LINK_REQUEST:I = 0x9859

.field private static final DID_COMPLETE_PROFILE_EXTRA:Ljava/lang/String; = "did_complete_profile"

.field public static final EMAIL_CONFIRMATION_CODE_EXTRA:Ljava/lang/String; = "email_code"

.field private static final INVALID_VERIFIED_ID_STEP:I = -0x1

.field private static final MAX_RETRIES_TO_VERIFY_ONLINE_ID:I = 0x5

.field private static final NUMBER_COMPLETED_STEPS_EXTRA:Ljava/lang/String; = "number_completed_steps"

.field private static final PROGRESS_BAR_ANIMATION_DURATION:I = 0x1f4

.field private static final RESERVATION_EXTRA:Ljava/lang/String; = "reservation"

.field public static final TAG:Ljava/lang/String;

.field private static final VERIFICATIONS_EXTRA:Ljava/lang/String; = "verifications"


# instance fields
.field private mActivityInForeground:Z

.field private mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

.field private mCurrentNumberOnlineRetriesAllowed:I

.field private mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

.field private mDidCompleteProfile:Z

.field private mDidPressVerifyMeBeforeReady:Z

.field private mEmailConfirmationCode:Ljava/lang/String;

.field private mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field private mNumberCompletedSteps:I

.field private mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/activities/VerifiedIdActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/VerifiedIdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mEmailConfirmationCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/airbnb/android/activities/VerifiedIdActivity;Lcom/airbnb/android/models/CheckpointVerifications;)Lcom/airbnb/android/models/CheckpointVerifications;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/VerifiedIdActivity;
    .param p1, "x1"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    return-object p1
.end method

.method static synthetic access$202(Lcom/airbnb/android/activities/VerifiedIdActivity;Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/VerifiedIdActivity;
    .param p1, "x1"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/activities/VerifiedIdActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/VerifiedIdActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->initializeProgressBar()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/activities/VerifiedIdActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/VerifiedIdActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->handleUpNavigation()V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/activities/VerifiedIdActivity;Lcom/airbnb/android/models/CheckpointVerifications;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/VerifiedIdActivity;
    .param p1, "x1"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->handleVerificationsResponse(Lcom/airbnb/android/models/CheckpointVerifications;)V

    return-void
.end method

.method private animateProgressBar(Z)V
    .registers 6
    .param p1, "makeVisible"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 617
    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v1}, Lcom/airbnb/android/views/StepProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 636
    :cond_c
    :goto_c
    return-void

    .line 619
    :cond_d
    if-nez p1, :cond_17

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v1}, Lcom/airbnb/android/views/StepProgressBar;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_c

    .line 625
    :cond_17
    if-eqz p1, :cond_3b

    .line 626
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v1}, Lcom/airbnb/android/views/StepProgressBar;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 627
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    .line 633
    :goto_2c
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 634
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 635
    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/StepProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c

    .line 629
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_3b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v1}, Lcom/airbnb/android/views/StepProgressBar;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 630
    .restart local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    goto :goto_2c
.end method

.method private countCompletedVerifications(Lcom/airbnb/android/models/CheckpointVerifications;)I
    .registers 5
    .param p1, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 571
    const/4 v0, 0x1

    .line 573
    .local v0, "completedSteps":I
    if-nez p1, :cond_5

    move v1, v0

    .line 597
    .end local v0    # "completedSteps":I
    .local v1, "completedSteps":I
    :goto_4
    return v1

    .line 577
    .end local v1    # "completedSteps":I
    .restart local v0    # "completedSteps":I
    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/android/models/CheckpointVerifications;->emailVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 578
    add-int/lit8 v0, v0, 0x1

    .line 581
    :cond_d
    invoke-virtual {p1}, Lcom/airbnb/android/models/CheckpointVerifications;->profilePhotoComplete()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 582
    add-int/lit8 v0, v0, 0x1

    .line 585
    :cond_15
    invoke-virtual {p1}, Lcom/airbnb/android/models/CheckpointVerifications;->phoneComplete()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 586
    add-int/lit8 v0, v0, 0x1

    .line 589
    :cond_1d
    invoke-virtual {p1}, Lcom/airbnb/android/models/CheckpointVerifications;->offlineVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 590
    add-int/lit8 v0, v0, 0x1

    .line 593
    :cond_25
    invoke-virtual {p1}, Lcom/airbnb/android/models/CheckpointVerifications;->onlineVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 594
    add-int/lit8 v0, v0, 0x1

    :cond_2d
    move v1, v0

    .line 597
    .end local v0    # "completedSteps":I
    .restart local v1    # "completedSteps":I
    goto :goto_4
.end method

.method private getContentFragment()Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private getParentIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 704
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private handleUpNavigation()V
    .registers 4

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getParentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 692
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 694
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 697
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/VerifiedIdActivity;->overridePendingTransition(II)V

    .line 701
    :goto_1d
    return-void

    .line 699
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->finish()V

    goto :goto_1d
.end method

.method private handleVerificationsResponse(Lcom/airbnb/android/models/CheckpointVerifications;)V
    .registers 5
    .param p1, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 538
    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/airbnb/android/models/CheckpointVerifications;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-boolean v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mActivityInForeground:Z

    if-nez v1, :cond_e

    .line 563
    :goto_d
    return-void

    .line 544
    :cond_e
    iput-object p1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    .line 546
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->countCompletedVerifications(Lcom/airbnb/android/models/CheckpointVerifications;)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mNumberCompletedSteps:I

    .line 548
    iget-boolean v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidPressVerifyMeBeforeReady:Z

    if-nez v1, :cond_26

    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->WELCOME:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    iget-object v2, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    if-eq v1, v2, :cond_2c

    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->COMPLETE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    iget-object v2, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    if-eq v1, v2, :cond_2c

    .line 549
    :cond_26
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showNextStep()V

    .line 550
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidPressVerifyMeBeforeReady:Z

    .line 554
    :cond_2c
    iget v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentNumberOnlineRetriesAllowed:I

    if-nez v1, :cond_46

    .line 555
    invoke-direct {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getContentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    .line 556
    .local v0, "fragment":Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->notifyServerFailureToConnect()V

    .line 557
    iget v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentNumberOnlineRetriesAllowed:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentNumberOnlineRetriesAllowed:I

    .line 562
    .end local v0    # "fragment":Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->checkExistingVerifications(Z)V

    goto :goto_d

    .line 558
    :cond_46
    iget v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentNumberOnlineRetriesAllowed:I

    if-lez v1, :cond_3f

    .line 559
    iget v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentNumberOnlineRetriesAllowed:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentNumberOnlineRetriesAllowed:I

    goto :goto_3f
.end method

.method private handleVerifiedIdIntents(Ljava/lang/String;)V
    .registers 5
    .param p1, "emailConfirmationCode"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->displayLoaderFrame(Z)V

    .line 188
    new-instance v0, Lcom/airbnb/android/requests/VerificationsRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/airbnb/android/activities/VerifiedIdActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/android/activities/VerifiedIdActivity$1;-><init>(Lcom/airbnb/android/activities/VerifiedIdActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/VerificationsRequest;-><init>(Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/VerificationsRequest;->execute()V

    .line 211
    return-void
.end method

.method private handleWebIntent()V
    .registers 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/DeepLinkDispatch;->newInstance(Landroid/content/Intent;)Lcom/airbnb/android/utils/DeepLinkDispatch;

    move-result-object v0

    .line 178
    .local v0, "dispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    const-string/jumbo v2, "users/confirm_email"

    invoke-virtual {v0, v2}, Lcom/airbnb/android/utils/DeepLinkDispatch;->isPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 179
    const-string/jumbo v2, "code"

    invoke-virtual {v0, v2}, Lcom/airbnb/android/utils/DeepLinkDispatch;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "emailConfirmationCode":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->handleVerifiedIdIntents(Ljava/lang/String;)V

    .line 184
    .end local v1    # "emailConfirmationCode":Ljava/lang/String;
    :cond_1b
    :goto_1b
    return-void

    .line 181
    :cond_1c
    const-string/jumbo v2, "verify"

    invoke-virtual {v0, v2}, Lcom/airbnb/android/utils/DeepLinkDispatch;->isPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 182
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/VerifiedIdActivity;->handleVerifiedIdIntents(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private incrementToStep(Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;)V
    .registers 3
    .param p1, "step"    # Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->displayLoaderFrame(Z)V

    .line 324
    iput-object p1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .line 325
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showStep()V

    .line 326
    return-void
.end method

.method private initializeProgressBar()V
    .registers 4

    .prologue
    .line 601
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StepProgressBar;

    iput-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    .line 602
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x6

    iget v2, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mNumberCompletedSteps:I

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/StepProgressBar;->initializeView(II)V

    .line 603
    return-void
.end method

.method public static intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/CheckpointVerifications;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/utils/Strap;)Landroid/content/Intent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;
    .param p2, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 101
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    if-eqz p3, :cond_2c

    .line 105
    invoke-virtual {p3}, Lcom/airbnb/android/utils/Strap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {p3, v2}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_16

    .line 110
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "k":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v3, "verifications"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v3, "reservation"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    return-object v1
.end method

.method public static intentForVerifiedId(Landroid/content/Context;Lcom/airbnb/android/models/CheckpointVerifications;Lcom/airbnb/android/models/Reservation;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;
    .param p2, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "verifications"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    return-object v0
.end method


# virtual methods
.method public completeVerifiedIdActivity()V
    .registers 2

    .prologue
    .line 643
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->setResult(I)V

    .line 644
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->finish()V

    .line 645
    return-void
.end method

.method public didCompleteAnimation()V
    .registers 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->nextStep()Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    move-result-object v0

    .line 332
    .local v0, "nextStep":Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;
    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->incrementToStep(Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;)V

    .line 333
    return-void
.end method

.method public displayLoaderFrame(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    .line 677
    .local v0, "loaderFrame":Lcom/airbnb/android/views/LoaderFrame;
    if-eqz p1, :cond_e

    .line 678
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 679
    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 684
    :goto_d
    return-void

    .line 681
    :cond_e
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 682
    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    goto :goto_d
.end method

.method public getCheckpointVerifications()Lcom/airbnb/android/models/CheckpointVerifications;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    return-object v0
.end method

.method protected getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    return-object v0
.end method

.method public getNumberCompletedStep()I
    .registers 2

    .prologue
    .line 612
    iget v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mNumberCompletedSteps:I

    return v0
.end method

.method public getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method public getReservationId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 661
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public hasReservation()Z
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hideStepProgressBar()V
    .registers 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    .line 609
    return-void
.end method

.method public nextStep()Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {v0}, Lcom/airbnb/android/models/CheckpointVerifications;->basicVerificationsComplete()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidCompleteProfile:Z

    if-nez v0, :cond_f

    .line 337
    sget-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->BASIC:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .line 343
    :goto_e
    return-object v0

    .line 338
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {v0}, Lcom/airbnb/android/models/CheckpointVerifications;->offlineVerificationComplete()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 339
    sget-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->OFFLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    goto :goto_e

    .line 340
    :cond_1a
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {v0}, Lcom/airbnb/android/models/CheckpointVerifications;->onlineVerificationComplete()Z

    move-result v0

    if-nez v0, :cond_25

    .line 341
    sget-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->ONLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    goto :goto_e

    .line 343
    :cond_25
    sget-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->COMPLETE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    goto :goto_e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 493
    sparse-switch p1, :sswitch_data_48

    .line 529
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/AirActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 531
    :cond_7
    :goto_7
    return-void

    .line 495
    :sswitch_8
    if-ne p2, v2, :cond_2c

    .line 498
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidCompleteProfile:Z

    .line 500
    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {v1}, Lcom/airbnb/android/models/CheckpointVerifications;->offlineVerificationComplete()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 501
    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->OFFLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    goto :goto_7

    .line 502
    :cond_1a
    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {v1}, Lcom/airbnb/android/models/CheckpointVerifications;->onlineVerificationComplete()Z

    move-result v1

    if-nez v1, :cond_27

    .line 503
    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->ONLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    goto :goto_7

    .line 505
    :cond_27
    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->COMPLETE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    goto :goto_7

    .line 507
    :cond_2c
    if-nez p2, :cond_7

    .line 508
    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->WELCOME:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    goto :goto_7

    .line 513
    :sswitch_33
    if-ne p2, v2, :cond_3c

    .line 515
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 519
    :cond_3c
    :sswitch_3c
    if-ne p2, v2, :cond_7

    .line 521
    invoke-direct {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getContentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 522
    .local v0, "currFrag":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_7

    .line 523
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_7

    .line 493
    :sswitch_data_48
    .sparse-switch
        0x2bd -> :sswitch_3c
        0x9858 -> :sswitch_8
        0xface -> :sswitch_33
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackBackPressed(Lcom/airbnb/android/utils/Strap;)V

    .line 247
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 248
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StepProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    .line 249
    invoke-direct {p0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->animateProgressBar(Z)V

    .line 252
    :cond_1d
    sget-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->WELCOME:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    iput-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .line 253
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    .line 258
    :goto_27
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onBackPressed()V

    .line 260
    return-void

    .line 255
    :cond_2b
    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->setResult(I)V

    goto :goto_27
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 135
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->setContentView(I)V

    .line 139
    const v1, 0x7f080026

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 141
    const v1, 0x7f0e07f5

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/VerifiedIdActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 143
    invoke-direct {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->handleWebIntent()V

    .line 145
    if-nez p1, :cond_50

    .line 146
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "verifications"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/CheckpointVerifications;

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    .line 149
    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-direct {p0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->countCompletedVerifications(Lcom/airbnb/android/models/CheckpointVerifications;)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mNumberCompletedSteps:I

    .line 151
    iput-boolean v4, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidCompleteProfile:Z

    .line 153
    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->WELCOME:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .line 164
    :goto_40
    iput-boolean v4, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidPressVerifyMeBeforeReady:Z

    .line 165
    iput v3, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentNumberOnlineRetriesAllowed:I

    .line 167
    invoke-direct {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->initializeProgressBar()V

    .line 168
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->setProgressBarState()V

    .line 170
    if-nez p1, :cond_4f

    .line 171
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showStep()V

    .line 173
    :cond_4f
    return-void

    .line 155
    :cond_50
    const-string/jumbo v1, "number_completed_steps"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mNumberCompletedSteps:I

    .line 156
    const-string/jumbo v1, "verifications"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/CheckpointVerifications;

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    .line 157
    const-string/jumbo v1, "reservation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Reservation;

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 158
    const-string/jumbo v1, "email_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mEmailConfirmationCode:Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "did_complete_profile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidCompleteProfile:Z

    .line 160
    const-string/jumbo v1, "current_step"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "stepOrdinal":I
    if-le v0, v3, :cond_93

    invoke-static {}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->values()[Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_90
    iput-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    goto :goto_40

    :cond_93
    const/4 v1, 0x0

    goto :goto_90
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 276
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 278
    const v0, 0x7f080554

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 473
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_20

    .line 488
    :cond_7
    :goto_7
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 475
    :sswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gtz v0, :cond_7

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->setResult(I)V

    goto :goto_7

    .line 481
    :sswitch_1b
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showChecklist()V

    goto :goto_7

    .line 473
    nop

    :sswitch_data_20
    .sparse-switch
        0x102002c -> :sswitch_c
        0x7f080554 -> :sswitch_1b
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onPause()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mActivityInForeground:Z

    .line 240
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    invoke-virtual {v0}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->quit()Z

    .line 241
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 215
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onResume()V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mActivityInForeground:Z

    .line 219
    new-instance v0, Lcom/airbnb/android/handlerthread/VerificationsPoller;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/handlerthread/VerificationsPoller;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    .line 220
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    new-instance v1, Lcom/airbnb/android/activities/VerifiedIdActivity$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/VerifiedIdActivity$2;-><init>(Lcom/airbnb/android/activities/VerifiedIdActivity;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->setListener(Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;)V

    .line 227
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    invoke-virtual {v0}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->start()V

    .line 228
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    invoke-virtual {v0}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->getLooper()Landroid/os/Looper;

    .line 230
    iget-boolean v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidCompleteProfile:Z

    if-eqz v0, :cond_2d

    .line 231
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showStep()V

    .line 233
    :cond_2d
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string/jumbo v0, "number_completed_steps"

    iget v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mNumberCompletedSteps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string/jumbo v0, "verifications"

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 268
    const-string/jumbo v0, "reservation"

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 269
    const-string/jumbo v0, "email_code"

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mEmailConfirmationCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v0, "did_complete_profile"

    iget-boolean v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidCompleteProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    const-string/jumbo v0, "current_step"

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method public setProgressBarState()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 348
    sget-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$3;->$SwitchMap$com$airbnb$android$activities$VerifiedIdActivity$VerifiedIdStep:[I

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 375
    :goto_f
    return-void

    .line 350
    :pswitch_10
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    goto :goto_f

    .line 353
    :pswitch_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mEmailConfirmationCode:Ljava/lang/String;

    goto :goto_f

    .line 356
    :pswitch_1a
    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/VerifiedIdActivity;->animateProgressBar(Z)V

    .line 357
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/StepProgressBar;->incrementToStep(I)V

    .line 358
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v1, 0x7f0e07ec

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    goto :goto_f

    .line 361
    :pswitch_2b
    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/VerifiedIdActivity;->animateProgressBar(Z)V

    .line 362
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->incrementToStep(I)V

    .line 363
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v1, 0x7f0e07ed

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    goto :goto_f

    .line 366
    :pswitch_3d
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_45

    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->animateProgressBar(Z)V

    .line 369
    :cond_45
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->incrementToStep(I)V

    .line 370
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v1, 0x7f0e07e9

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    goto :goto_f

    .line 348
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_10
        :pswitch_16
        :pswitch_1a
        :pswitch_2b
        :pswitch_3d
    .end packed-switch
.end method

.method public showChecklist()V
    .registers 4

    .prologue
    .line 671
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->newInstance(Lcom/airbnb/android/models/CheckpointVerifications;)Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public showComplete()V
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->newInstance(Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 443
    return-void
.end method

.method public showCompleteProfile()V
    .registers 6

    .prologue
    .line 421
    iget-boolean v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mActivityInForeground:Z

    if-nez v1, :cond_5

    .line 428
    :goto_4
    return-void

    .line 425
    :cond_5
    iget v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mNumberCompletedSteps:I

    iget-object v2, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    iget-object v3, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    iget-object v4, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mEmailConfirmationCode:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/airbnb/android/activities/CompleteProfileActivity;->intentForVerifiedId(Landroid/content/Context;ILcom/airbnb/android/models/CheckpointVerifications;Lcom/airbnb/android/models/Reservation;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x9858

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;)V
    .registers 8
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 454
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 455
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 458
    :cond_d
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 459
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-direct {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getContentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 460
    const v2, 0x7f040006

    const v3, 0x7f040008

    const v4, 0x7f040007

    const v5, 0x7f040009

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 461
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 463
    :cond_31
    const v2, 0x7f080025

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 464
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 465
    return-void
.end method

.method public showNextStep()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 289
    sget-object v3, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->WELCOME:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    iget-object v4, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    if-nez v3, :cond_15

    .line 290
    invoke-virtual {p0, v5}, Lcom/airbnb/android/activities/VerifiedIdActivity;->displayLoaderFrame(Z)V

    .line 291
    iput-boolean v5, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mDidPressVerifyMeBeforeReady:Z

    .line 320
    :cond_14
    :goto_14
    return-void

    .line 295
    :cond_15
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->nextStep()Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    move-result-object v1

    .line 297
    .local v1, "nextStep":Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;
    iget-object v3, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 298
    iget-object v3, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    sget-object v4, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->OFFLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    if-eq v3, v4, :cond_2d

    iget-object v3, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    sget-object v4, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->ONLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    if-ne v3, v4, :cond_6e

    .line 299
    :cond_2d
    invoke-direct {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getContentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;

    .line 300
    .local v0, "fragment":Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;
    if-eqz v0, :cond_14

    .line 301
    iget-object v3, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    sget-object v4, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->OFFLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    if-ne v3, v4, :cond_5e

    .line 302
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineConfirmView(Lcom/airbnb/android/utils/Strap;)V

    .line 308
    :goto_42
    const/4 v3, -0x1

    iput v3, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentNumberOnlineRetriesAllowed:I

    .line 310
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/VerifiedIdActivity;->displayLoaderFrame(Z)V

    .line 311
    iget-object v3, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    sget-object v4, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->OFFLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    if-ne v3, v4, :cond_66

    const v3, 0x7f0e07dd

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "verificationHeader":Ljava/lang/String;
    :goto_56
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->getVerificationSuccessDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->animateCompletion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 304
    .end local v2    # "verificationHeader":Ljava/lang/String;
    :cond_5e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOnlineConfirmView(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_42

    .line 311
    :cond_66
    const v3, 0x7f0e07e4

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    .line 317
    .end local v0    # "fragment":Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;
    :cond_6e
    invoke-direct {p0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->incrementToStep(Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;)V

    goto :goto_14
.end method

.method public showOffline()V
    .registers 2

    .prologue
    .line 432
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 433
    return-void
.end method

.method public showOnline()V
    .registers 2

    .prologue
    .line 437
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 438
    return-void
.end method

.method public showStep()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 378
    sget-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$3;->$SwitchMap$com$airbnb$android$activities$VerifiedIdActivity$VerifiedIdStep:[I

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentVerifiedIdStep:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_66

    .line 408
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showWelcome()V

    .line 411
    :goto_12
    return-void

    .line 380
    :pswitch_13
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showWelcome()V

    .line 381
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    goto :goto_12

    .line 384
    :pswitch_1c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showCompleteProfile()V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mEmailConfirmationCode:Ljava/lang/String;

    goto :goto_12

    .line 388
    :pswitch_23
    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/VerifiedIdActivity;->animateProgressBar(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showOffline()V

    .line 390
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/StepProgressBar;->incrementToStep(I)V

    .line 391
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v1, 0x7f0e07ec

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    goto :goto_12

    .line 394
    :pswitch_37
    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/VerifiedIdActivity;->animateProgressBar(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showOnline()V

    .line 396
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->incrementToStep(I)V

    .line 397
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v1, 0x7f0e07ed

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    goto :goto_12

    .line 400
    :pswitch_4c
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_54

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->animateProgressBar(Z)V

    .line 403
    :cond_54
    invoke-virtual {p0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showComplete()V

    .line 404
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->incrementToStep(I)V

    .line 405
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v1, 0x7f0e07e9

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    goto :goto_12

    .line 378
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1c
        :pswitch_23
        :pswitch_37
        :pswitch_4c
    .end packed-switch
.end method

.method public showWelcome()V
    .registers 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mEmailConfirmationCode:Ljava/lang/String;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;->newInstance(ZLcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/fragments/verifiedid/WelcomeScreenFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 416
    return-void

    .line 415
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public waitForOnlineId()V
    .registers 2

    .prologue
    .line 665
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->displayLoaderFrame(Z)V

    .line 666
    const/4 v0, 0x5

    iput v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity;->mCurrentNumberOnlineRetriesAllowed:I

    .line 667
    return-void
.end method
