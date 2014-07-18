.class public Lcom/airbnb/android/activities/CompleteProfileActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "CompleteProfileActivity.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment$VerifiedIdDialogFragment;
.implements Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/CompleteProfileActivity$4;,
        Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;
    }
.end annotation


# static fields
.field private static final EMAIL_CONFIRMATION_CODE_EXTRA:Ljava/lang/String; = "email_confirmation_code"

.field private static final EMAIL_FAILED:Ljava/lang/String; = "email_verification_failed"

.field private static final NUMBER_COMPLETED_STEPS_EXTRA:Ljava/lang/String; = "number_completed_steps"

.field private static final NUMBER_STEPS_COMPLETE_PROFILE_ONLY:I = 0x3

.field private static final NUMBER_STEPS_VERIFIED_ID:I = 0x6

.field private static final PHONE_NUM_TO_VERIFY_EXTRA:Ljava/lang/String; = "phone_number_to_verify"

.field private static final PROFILE_TYPE_EXTRA:Ljava/lang/String; = "profile_type"

.field private static final PROGRESS_BAR_ANIMATION_DELAY:I = 0x1f4

.field private static final PROGRESS_BAR_ANIMATION_DURATION:I = 0x1f4

.field private static final RESERVATION_EXTRA:Ljava/lang/String; = "reservation"

.field public static final TAG:Ljava/lang/String;

.field private static final VERIFICATIONS_EXTRA:Ljava/lang/String; = "verifications"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

.field private mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

.field private mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

.field private mDidCompleteAllVerifications:Z

.field private mEmailConfirmationCode:Ljava/lang/String;

.field private mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

.field private mNumberCompletedSteps:I

.field private mPhoneNumberToVerify:Ljava/lang/String;

.field private mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mUserEmailAddress:Ljava/lang/String;

.field private mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/CompleteProfileActivity;Lcom/airbnb/android/models/CheckpointVerifications;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/CompleteProfileActivity;
    .param p1, "x1"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->handleVerificationsResponse(Lcom/airbnb/android/models/CheckpointVerifications;)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/CompleteProfileActivity;)Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/CompleteProfileActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/CompleteProfileActivity;)Lcom/airbnb/android/views/StepProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/CompleteProfileActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    return-object v0
.end method

.method private emailRequired(Landroid/content/Context;)Z
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 276
    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {v1}, Lcom/airbnb/android/models/CheckpointVerifications;->emailVerificationComplete()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 278
    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v1}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-static {p1, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->hasNoVerification(Landroid/content/Context;Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;)Z

    move-result v0

    goto :goto_10
.end method

.method private handleVerificationsResponse(Lcom/airbnb/android/models/CheckpointVerifications;)V
    .registers 4
    .param p1, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 448
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/airbnb/android/models/CheckpointVerifications;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput-object p1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    .line 453
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mEmailConfirmationCode:Ljava/lang/String;

    if-nez v0, :cond_22

    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/airbnb/android/models/CheckpointVerifications;->emailVerificationComplete()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 454
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->completeVerification()V

    .line 457
    :cond_22
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->checkExistingVerifications(Z)V

    .line 458
    return-void
.end method

.method private static hasNoVerification(Landroid/content/Context;Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;)Z
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "verification"    # Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    sget-object v2, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHOTO:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne p1, v2, :cond_17

    .line 284
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v2

    if-nez v2, :cond_15

    .line 290
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 284
    goto :goto_14

    .line 286
    :cond_17
    sget-object v2, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne p1, v2, :cond_32

    .line 287
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getVerifications()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "email"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v0, v1

    goto :goto_14

    .line 289
    :cond_32
    sget-object v2, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne p1, v2, :cond_4d

    .line 290
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getVerifications()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v0, v1

    goto :goto_14

    .line 292
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown verification type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private incrementVerificationStep(Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;I)V
    .registers 4
    .param p1, "type"    # Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;
    .param p2, "progressBarCaptionResId"    # I

    .prologue
    .line 373
    iput-object p1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    .line 374
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StepProgressBar;->incrementStep()V

    .line 375
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    .line 376
    return-void
.end method

.method private initProgressBar()V
    .registers 4

    .prologue
    .line 465
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StepProgressBar;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    .line 468
    iget v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mNumberCompletedSteps:I

    if-nez v0, :cond_1e

    .line 469
    invoke-direct {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->numberCompletedSteps()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mNumberCompletedSteps:I

    .line 470
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x3

    iget v2, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mNumberCompletedSteps:I

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/StepProgressBar;->initializeView(II)V

    .line 475
    :goto_1d
    return-void

    .line 473
    :cond_1e
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x6

    iget v2, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mNumberCompletedSteps:I

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/StepProgressBar;->initializeView(II)V

    goto :goto_1d
.end method

.method public static intentForType(Landroid/content/Context;Lcom/airbnb/android/enums/CompleteProfileType;)Landroid/content/Intent;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/airbnb/android/enums/CompleteProfileType;

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "profile_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method public static intentForVerifiedId(Landroid/content/Context;ILcom/airbnb/android/models/CheckpointVerifications;Lcom/airbnb/android/models/Reservation;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "numberCompletedSteps"    # I
    .param p2, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;
    .param p3, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p4, "emailConfirmationCode"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v1, Lcom/airbnb/android/enums/CompleteProfileType;->VERIFIED_ID:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-static {p0, v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->intentForType(Landroid/content/Context;Lcom/airbnb/android/enums/CompleteProfileType;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "number_completed_steps"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "verifications"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string/jumbo v1, "email_confirmation_code"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    return-object v0
.end method

.method public static intentForVerifyPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "formattedPhoneNum"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v1, Lcom/airbnb/android/enums/CompleteProfileType;->EDIT_PROFILE_VERIFY_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-static {p0, v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->intentForType(Landroid/content/Context;Lcom/airbnb/android/enums/CompleteProfileType;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phone_number_to_verify"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    return-object v0
.end method

.method private numberCompletedSteps()I
    .registers 3

    .prologue
    .line 540
    const/4 v0, 0x1

    .line 542
    .local v0, "completedSteps":I
    invoke-direct {p0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->photoRequired(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 543
    add-int/lit8 v0, v0, 0x1

    .line 546
    :cond_9
    invoke-direct {p0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->emailRequired(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 547
    add-int/lit8 v0, v0, 0x1

    .line 550
    :cond_11
    invoke-direct {p0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->phoneRequired(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 551
    add-int/lit8 v0, v0, 0x1

    .line 554
    :cond_19
    return v0
.end method

.method private phoneRequired(Landroid/content/Context;)Z
    .registers 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 268
    iget-object v2, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {v2}, Lcom/airbnb/android/models/CheckpointVerifications;->phoneComplete()Z

    move-result v2

    if-nez v2, :cond_11

    .line 270
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 268
    goto :goto_10

    .line 270
    :cond_13
    iget-object v2, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v2}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-static {p1, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->hasNoVerification(Landroid/content/Context;Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    move v1, v0

    :cond_24
    move v0, v1

    goto :goto_10
.end method

.method private photoRequired(Landroid/content/Context;)Z
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 260
    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {v1}, Lcom/airbnb/android/models/CheckpointVerifications;->profilePhotoComplete()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 262
    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v1}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHOTO:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-static {p1, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->hasNoVerification(Landroid/content/Context;Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;)Z

    move-result v0

    goto :goto_10
.end method

.method private sendEmailConfirmationCode()V
    .registers 6

    .prologue
    .line 418
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/CompleteProfileActivity;->displayLoaderFrame(Z)V

    .line 419
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "userId":Ljava/lang/String;
    new-instance v0, Lcom/airbnb/android/activities/CompleteProfileActivity$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity$2;-><init>(Lcom/airbnb/android/activities/CompleteProfileActivity;)V

    .line 439
    .local v0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;>;"
    new-instance v1, Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;

    iget-object v3, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mEmailConfirmationCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 440
    .local v1, "request":Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;->execute()V

    .line 441
    return-void
.end method

.method private setProgressBarCaption()V
    .registers 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    sget-object v1, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHOTO:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne v0, v1, :cond_f

    .line 498
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v1, 0x7f0e07e8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    .line 504
    :goto_e
    return-void

    .line 499
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    sget-object v1, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne v0, v1, :cond_1e

    .line 500
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v1, 0x7f0e07ea

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    goto :goto_e

    .line 502
    :cond_1e
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v1, 0x7f0e07eb

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    goto :goto_e
.end method

.method public static shouldShowActivity(Landroid/content/Context;)Z
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 296
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHOTO:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-static {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->hasNoVerification(Landroid/content/Context;Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-static {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->hasNoVerification(Landroid/content/Context;Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-static {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->hasNoVerification(Landroid/content/Context;Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private showFragment(Landroid/support/v4/app/Fragment;)V
    .registers 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v6, 0x7f080025

    .line 528
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 529
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 531
    .local v1, "previousFragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_24

    .line 532
    const v2, 0x7f040006

    const v3, 0x7f040008

    const v4, 0x7f040007

    const v5, 0x7f040009

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 535
    :cond_24
    invoke-virtual {v0, v6, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 536
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 537
    return-void
.end method


# virtual methods
.method public animateShowProgressBar()V
    .registers 5

    .prologue
    .line 478
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StepProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    .line 479
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    .line 494
    :cond_10
    :goto_10
    return-void

    .line 481
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StepProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 482
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/activities/CompleteProfileActivity$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity$3;-><init>(Lcom/airbnb/android/activities/CompleteProfileActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10
.end method

.method public completeVerification()V
    .registers 5

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;

    .line 381
    .local v0, "currentFragment":Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;
    sget-object v2, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHOTO:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    iget-object v3, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne v2, v3, :cond_32

    .line 382
    const v2, 0x7f0e010c

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0106

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->animateCompletion(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 384
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhotoConfirmView(Lcom/airbnb/android/utils/Strap;)V

    .line 400
    :cond_31
    :goto_31
    return-void

    .line 386
    :cond_32
    sget-object v2, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    iget-object v3, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne v2, v3, :cond_52

    .line 387
    const v2, 0x7f0e0105

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mUserEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->animateCompletion(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 389
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackEmailConfirmView(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_31

    .line 391
    :cond_52
    sget-object v2, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    iget-object v3, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne v2, v3, :cond_7c

    .line 392
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getPhone()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "phoneNumber":Ljava/lang/String;
    const v2, 0x7f0e010a

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->animateCompletion(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 395
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhoneConfirmView(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_31

    .line 398
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_7c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "CompleteProfileActivity needs to have a current verification state."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public displayLoaderFrame(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 581
    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 582
    if-nez p1, :cond_13

    .line 583
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 587
    :goto_f
    return-void

    .line 581
    :cond_10
    const/16 v0, 0x8

    goto :goto_5

    .line 585
    :cond_13
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    goto :goto_f
.end method

.method public getPhoneNumberToVerify()Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mPhoneNumberToVerify:Ljava/lang/String;

    return-object v0
.end method

.method public getReservationId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

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

.method public getType()Lcom/airbnb/android/enums/CompleteProfileType;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    return-object v0
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 563
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getReservationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public hideProgressBar()V
    .registers 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    .line 508
    return-void
.end method

.method public isEditProfileFlow()Z
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v0}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v0

    return v0
.end method

.method public isVerifiedIdFlow()Z
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v0}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 576
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 577
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 214
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackBackPressed(Lcom/airbnb/android/utils/Strap;)V

    .line 217
    :cond_d
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->finish()V

    .line 218
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0e074c

    const/4 v2, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    iput-boolean v2, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mDidCompleteAllVerifications:Z

    .line 113
    if-nez p1, :cond_ac

    .line 114
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "verifications"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/CheckpointVerifications;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    .line 115
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "profile_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/enums/CompleteProfileType;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 117
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "email_confirmation_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mEmailConfirmationCode:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "number_completed_steps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mNumberCompletedSteps:I

    .line 119
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "phone_number_to_verify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mPhoneNumberToVerify:Ljava/lang/String;

    .line 129
    :goto_5f
    invoke-direct {p0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->photoRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 130
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHOTO:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    .line 139
    :goto_69
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 141
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setContentView(I)V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mAnimationHandler:Landroid/os/Handler;

    .line 145
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 146
    const v0, 0x7f0e07f5

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 153
    :goto_89
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    .line 155
    invoke-direct {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->initProgressBar()V

    .line 156
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v0}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    .line 164
    :goto_a6
    if-nez p1, :cond_ab

    .line 165
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->requestVerification()V

    .line 167
    :cond_ab
    return-void

    .line 121
    :cond_ac
    const-string/jumbo v0, "verifications"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/CheckpointVerifications;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    .line 122
    const-string/jumbo v0, "profile_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/enums/CompleteProfileType;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    .line 123
    const-string/jumbo v0, "reservation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 124
    const-string/jumbo v0, "email_confirmation_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mEmailConfirmationCode:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "number_completed_steps"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mNumberCompletedSteps:I

    .line 126
    const-string/jumbo v0, "phone_number_to_verify"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mPhoneNumberToVerify:Ljava/lang/String;

    goto/16 :goto_5f

    .line 131
    :cond_ea
    invoke-direct {p0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->emailRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 132
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    goto/16 :goto_69

    .line 133
    :cond_f6
    invoke-direct {p0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->phoneRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 134
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    goto/16 :goto_69

    .line 136
    :cond_102
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Expected at least one verification to complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    .line 147
    :cond_10c
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v0}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 148
    const v0, 0x7f0e075b

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    goto/16 :goto_89

    .line 150
    :cond_11e
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    goto/16 :goto_89

    .line 160
    :cond_125
    invoke-direct {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setProgressBarCaption()V

    goto/16 :goto_a6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v0}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v0

    if-nez v0, :cond_23

    .line 233
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 235
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 236
    const v0, 0x7f080554

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 240
    :cond_23
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 251
    :goto_7
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 247
    :pswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showChecklist()V

    goto :goto_7

    .line 245
    :pswitch_data_10
    .packed-switch 0x7f080554
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 205
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onPause()V

    .line 207
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    invoke-virtual {v0}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->quit()Z

    .line 208
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onResume()V

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mEmailConfirmationCode:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    sget-object v1, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne v0, v1, :cond_10

    .line 186
    invoke-direct {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->sendEmailConfirmationCode()V

    .line 189
    :cond_10
    new-instance v0, Lcom/airbnb/android/handlerthread/VerificationsPoller;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/handlerthread/VerificationsPoller;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    .line 190
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    new-instance v1, Lcom/airbnb/android/activities/CompleteProfileActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity$1;-><init>(Lcom/airbnb/android/activities/CompleteProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->setListener(Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;)V

    .line 197
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    invoke-virtual {v0}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->start()V

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mVerificationsPoller:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    invoke-virtual {v0}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->getLooper()Landroid/os/Looper;

    .line 201
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    const-string/jumbo v0, "email_confirmation_code"

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mEmailConfirmationCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "number_completed_steps"

    iget v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mNumberCompletedSteps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string/jumbo v0, "verifications"

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    const-string/jumbo v0, "reservation"

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    const-string/jumbo v0, "profile_type"

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    const-string/jumbo v0, "phone_number_to_verify"

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mPhoneNumberToVerify:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public overridePendingTransition(II)V
    .registers 4
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mDidCompleteAllVerifications:Z

    if-eqz v0, :cond_b

    .line 223
    const v0, 0x7f040008

    invoke-super {p0, p1, v0}, Lcom/airbnb/android/activities/AirActivity;->overridePendingTransition(II)V

    .line 228
    :goto_a
    return-void

    .line 225
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/activities/AirActivity;->overridePendingTransition(II)V

    goto :goto_a
.end method

.method public requestVerification()V
    .registers 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 315
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$4;->$SwitchMap$com$airbnb$android$activities$CompleteProfileActivity$Verification:[I

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 326
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No verifications required"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setResult(I)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mDidCompleteAllVerifications:Z

    .line 329
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->finish()V

    .line 332
    :goto_26
    return-void

    .line 317
    :pswitch_27
    invoke-static {}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_26

    .line 320
    :pswitch_2f
    invoke-static {}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;->newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_26

    .line 323
    :pswitch_37
    invoke-static {}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_26

    .line 315
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2f
        :pswitch_37
    .end packed-switch
.end method

.method public setUserEmailAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "userEmailAddress"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mUserEmailAddress:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public showChecklist()V
    .registers 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->newInstance(Lcom/airbnb/android/models/CheckpointVerifications;)Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public showProgressBar()V
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCompleteProfileType:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v0}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v0

    if-nez v0, :cond_b

    .line 512
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->animateShowProgressBar()V

    .line 514
    :cond_b
    return-void
.end method

.method public updateUserEmail()V
    .registers 3

    .prologue
    .line 407
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getVerifications()Ljava/util/List;

    move-result-object v0

    .line 408
    .local v0, "verifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_14

    .line 409
    const-string/jumbo v1, "email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_14
    return-void
.end method

.method public updateVerificationState()V
    .registers 6

    .prologue
    const v4, 0x7f0e07eb

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 335
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$4;->$SwitchMap$com$airbnb$android$activities$CompleteProfileActivity$Verification:[I

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    .line 367
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid verification"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_1a
    return-void

    .line 337
    :pswitch_1b
    invoke-direct {p0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->emailRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 338
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    const v1, 0x7f0e07ea

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->incrementVerificationStep(Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;I)V

    goto :goto_1a

    .line 339
    :cond_2a
    invoke-direct {p0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->phoneRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 340
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-direct {p0, v0, v4}, Lcom/airbnb/android/activities/CompleteProfileActivity;->incrementVerificationStep(Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;I)V

    goto :goto_1a

    .line 342
    :cond_36
    iput-boolean v3, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mDidCompleteAllVerifications:Z

    .line 343
    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setResult(I)V

    .line 344
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->finish()V

    goto :goto_1a

    .line 349
    :pswitch_3f
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->updateUserEmail()V

    .line 351
    invoke-direct {p0, p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->phoneRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 352
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-direct {p0, v0, v4}, Lcom/airbnb/android/activities/CompleteProfileActivity;->incrementVerificationStep(Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;I)V

    goto :goto_1a

    .line 354
    :cond_4e
    iput-boolean v3, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mDidCompleteAllVerifications:Z

    .line 355
    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setResult(I)V

    .line 356
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->finish()V

    goto :goto_1a

    .line 361
    :pswitch_57
    iput-boolean v3, p0, Lcom/airbnb/android/activities/CompleteProfileActivity;->mDidCompleteAllVerifications:Z

    .line 362
    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setResult(I)V

    .line 363
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->finish()V

    goto :goto_1a

    .line 335
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_3f
        :pswitch_57
    .end packed-switch
.end method
