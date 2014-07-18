.class public Lcom/airbnb/android/activities/OfficialIdActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "OfficialIdActivity.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;
.implements Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment$VerifiedIdDialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;
    }
.end annotation


# static fields
.field private static final BACK_ID_URI_EXTRA:Ljava/lang/String; = "back_id_uri"

.field private static final COUNTRY_CODE_EXTRA:Ljava/lang/String; = "country_code"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "dialog"

.field public static final DRIVERS_LICENSE_TYPE:Ljava/lang/String; = "DRIVING_LICENSE"

.field private static final FRONT_ID_URI_EXTRA:Ljava/lang/String; = "front_id_uri"

.field public static final ID_TYPE:Ljava/lang/String; = "ID_CARD"

.field public static final ID_TYPE_EXTRA:Ljava/lang/String; = "id_type"

.field private static final INVALID_STATE:I = -0x1

.field private static final NUMBER_COMPLETED_STEPS_EXTRA:Ljava/lang/String; = "number_completed_steps"

.field private static final NUMBER_STEPS_IN_VERIFIED_ID:I = 0x6

.field public static final PASSPORT_TYPE:Ljava/lang/String; = "PASSPORT"

.field private static final RESERVATION_EXTRA:Ljava/lang/String; = "reservation"

.field private static final STATE_EXTRA:Ljava/lang/String; = "state"

.field private static final SUPPORTED_COUNTRIES_EXTRA:Ljava/lang/String; = "supported_countries"

.field private static final SUPPORTED_COUNTRIES_TYPES_EXTRA:Ljava/lang/String; = "supported_countries_types"

.field private static final TAG:Ljava/lang/String;

.field private static final VERIFICATIONS_EXTRA:Ljava/lang/String; = "verifications"


# instance fields
.field private mAttemptsRemaining:I

.field private mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

.field private mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

.field private mConfirmationButtons:Landroid/widget/LinearLayout;

.field private mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

.field private mDidSuccessfullyValidateId:Z

.field private mIdBackUriString:Ljava/lang/String;

.field private mIdFrontUriString:Ljava/lang/String;

.field private mOfficialIdCountryCode:Ljava/lang/String;

.field private mOfficialIdType:Ljava/lang/String;

.field private mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mResumed:Z

.field private mScanReferenceId:Ljava/lang/String;

.field private mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

.field private mStatusRequest:Lcom/airbnb/android/requests/OfficialIdStatusRequest;

.field private mSupportedCountries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;

.field private mTypesForSupportedCountries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-class v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/OfficialIdActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mSupportedCountries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mSupportedCountries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mTypesForSupportedCountries:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mTypesForSupportedCountries:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdBackUriString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/activities/OfficialIdActivity;->uploadImages(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$602(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mScanReferenceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/airbnb/android/activities/OfficialIdActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->verifyUploadedIdStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/activities/OfficialIdActivity;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/activities/OfficialIdActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/OfficialIdActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->displayError()V

    return-void
.end method

.method private displayError()V
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/CircleBadgeView;->animateActivation(Z)V

    .line 543
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToError()V

    .line 544
    return-void
.end method

.method private initProgressBar()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 488
    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/StepProgressBar;

    iput-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    .line 489
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    .line 490
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const v2, 0x7f0e07ec

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StepProgressBar;->setCaption(I)V

    .line 492
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "number_completed_steps"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 493
    .local v0, "completedSteps":I
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/views/StepProgressBar;->initializeView(II)V

    .line 494
    return-void
.end method

.method public static intentForVerifiedId(Landroid/content/Context;ILcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/CheckpointVerifications;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numberCompletedSteps"    # I
    .param p2, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p3, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "number_completed_steps"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v1, "verifications"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    return-object v0
.end method

.method private setupConfirmationButtons()V
    .registers 4

    .prologue
    .line 556
    const v2, 0x7f08003c

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 557
    .local v0, "changeButton":Landroid/widget/Button;
    new-instance v2, Lcom/airbnb/android/activities/OfficialIdActivity$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/OfficialIdActivity$4;-><init>(Lcom/airbnb/android/activities/OfficialIdActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    const v2, 0x7f08003d

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 574
    .local v1, "confirmButton":Landroid/widget/Button;
    new-instance v2, Lcom/airbnb/android/activities/OfficialIdActivity$5;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/OfficialIdActivity$5;-><init>(Lcom/airbnb/android/activities/OfficialIdActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    return-void
.end method

.method private showFragment(Landroid/support/v4/app/Fragment;)V
    .registers 9
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v6, 0x7f08003a

    .line 283
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 285
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 286
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f040006

    const v3, 0x7f040008

    const v4, 0x7f040007

    const v5, 0x7f040009

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 288
    if-eqz v1, :cond_36

    instance-of v2, v1, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;

    if-nez v2, :cond_36

    .line 289
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 294
    :goto_2f
    invoke-virtual {v0, v6, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 295
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 296
    return-void

    .line 291
    :cond_36
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_2f
.end method

.method private uploadId()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 358
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdFrontUriString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "frontIdImage":Ljava/io/File;
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$2;

    invoke-direct {v0, p0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity$2;-><init>(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/io/File;)V

    .line 381
    .local v0, "frontCompressTask":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    instance-of v4, v0, Landroid/os/AsyncTask;

    if-nez v4, :cond_19

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    .end local v0    # "frontCompressTask":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    :goto_18
    return-void

    .line 381
    .restart local v0    # "frontCompressTask":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    :cond_19
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "frontCompressTask":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_18
.end method

.method private uploadImages(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p1, "frontIdImage"    # Ljava/io/File;
    .param p2, "backIdImage"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 385
    new-instance v0, Lcom/airbnb/android/requests/OfficialIdUploadRequest;

    iget-object v3, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdCountryCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    new-instance v5, Lcom/airbnb/android/activities/OfficialIdActivity$3;

    invoke-direct {v5, p0}, Lcom/airbnb/android/activities/OfficialIdActivity$3;-><init>(Lcom/airbnb/android/activities/OfficialIdActivity;)V

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/requests/OfficialIdUploadRequest;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/OfficialIdUploadRequest;->execute()V

    .line 412
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflineUploadPhotoView(Lcom/airbnb/android/utils/Strap;)V

    .line 414
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 415
    .local v6, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 416
    const v0, 0x7f0e07df

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdTypeDisplayedString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    .line 419
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 420
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v6, v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 421
    return-void
.end method

.method private verifyUploadedIdStatus()V
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mScanReferenceId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->intentForOfficialId(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 528
    return-void
.end method


# virtual methods
.method public doneWithUpload()V
    .registers 4

    .prologue
    .line 345
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    if-eqz v1, :cond_9

    .line 346
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 349
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 350
    .local v0, "resultData":Landroid/content/Intent;
    const-string/jumbo v1, "id_type"

    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdTypeDisplayedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->setResult(ILandroid/content/Intent;)V

    .line 353
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->finish()V

    .line 354
    return-void
.end method

.method public getIdBackUriString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdBackUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getIdFrontUriString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdFrontUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialIdCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialIdType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialIdTypeDisplayedString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 458
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    const-string/jumbo v2, "PASSPORT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 459
    const v1, 0x7f0e07cd

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "displayedString":Ljava/lang/String;
    :goto_12
    return-object v0

    .line 460
    .end local v0    # "displayedString":Ljava/lang/String;
    :cond_13
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    const-string/jumbo v2, "DRIVING_LICENSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 461
    const v1, 0x7f0e07c8

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayedString":Ljava/lang/String;
    goto :goto_12

    .line 462
    .end local v0    # "displayedString":Ljava/lang/String;
    :cond_26
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    const-string/jumbo v2, "ID_CARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 463
    const v1, 0x7f0e07c9

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayedString":Ljava/lang/String;
    goto :goto_12

    .line 465
    .end local v0    # "displayedString":Ljava/lang/String;
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Need valid current Id Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReservationId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

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

.method public getSupportedCountries()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mSupportedCountries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTypesForSupportedCountries()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mTypesForSupportedCountries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 523
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public goToCountry()V
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/CircleBadgeView;->initializeAsInactiveBadge()V

    .line 301
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->COUNTRY:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 302
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 303
    return-void
.end method

.method public goToError()V
    .registers 2

    .prologue
    .line 340
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->ERROR:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 341
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdErrorFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 342
    return-void
.end method

.method public goToPhotoConfirmBack()V
    .registers 2

    .prologue
    .line 330
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->BACK_CONFIRM:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 331
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 332
    return-void
.end method

.method public goToPhotoConfirmFront()V
    .registers 2

    .prologue
    .line 316
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->FRONT_CONFIRM:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 317
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 318
    return-void
.end method

.method public goToPhotoSelectionBack()V
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    const-string/jumbo v1, "PASSPORT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 322
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToUpload()V

    .line 327
    :goto_e
    return-void

    .line 324
    :cond_f
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->BACK_PHOTO:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 325
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_e
.end method

.method public goToPhotoSelectionFront()V
    .registers 2

    .prologue
    .line 311
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->FRONT_PHOTO:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 312
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoSelectionFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 313
    return-void
.end method

.method public goToType()V
    .registers 2

    .prologue
    .line 306
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->ID_TYPE:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 307
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdTypeFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 308
    return-void
.end method

.method public goToUpload()V
    .registers 2

    .prologue
    .line 335
    sget-object v0, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->UPLOAD:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 336
    invoke-direct {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->uploadId()V

    .line 337
    return-void
.end method

.method public isCapturingFrontId()Z
    .registers 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    sget-object v1, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->FRONT_PHOTO:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    sget-object v1, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->FRONT_CONFIRM:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 270
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onBackPressed()V

    .line 272
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackBackPressed(Lcom/airbnb/android/utils/Strap;)V

    .line 274
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->getPrevious()Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 277
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1b

    .line 278
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 280
    :cond_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 142
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mResumed:Z

    .line 145
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->setContentView(I)V

    .line 147
    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/CircleBadgeView;

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    .line 148
    iget-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/CircleBadgeView;->initializeAsInactiveBadge()V

    .line 150
    const v2, 0x7f08003b

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mConfirmationButtons:Landroid/widget/LinearLayout;

    .line 152
    const v2, 0x7f0e07d7

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/OfficialIdActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 154
    invoke-direct {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->initProgressBar()V

    .line 156
    if-eqz p1, :cond_af

    .line 157
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, "stateOrdinal":I
    if-le v1, v4, :cond_ad

    invoke-static {}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->values()[Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    move-result-object v2

    aget-object v2, v2, v1

    :goto_45
    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 159
    const-string/jumbo v2, "country_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdCountryCode:Ljava/lang/String;

    .line 160
    const-string/jumbo v2, "id_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    .line 161
    const-string/jumbo v2, "front_id_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdFrontUriString:Ljava/lang/String;

    .line 162
    const-string/jumbo v2, "back_id_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdBackUriString:Ljava/lang/String;

    .line 163
    const-string/jumbo v2, "supported_countries"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mSupportedCountries:Ljava/util/ArrayList;

    .line 164
    const-string/jumbo v2, "supported_countries_types"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mTypesForSupportedCountries:Ljava/util/HashMap;

    .line 165
    const-string/jumbo v2, "reservation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Reservation;

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 166
    const-string/jumbo v2, "verifications"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/CheckpointVerifications;

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    .line 167
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    .line 204
    .end local v1    # "stateOrdinal":I
    :goto_a4
    invoke-direct {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->setupConfirmationButtons()V

    .line 206
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v2, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 207
    return-void

    .line 158
    .restart local v1    # "stateOrdinal":I
    :cond_ad
    const/4 v2, 0x0

    goto :goto_45

    .line 169
    .end local v1    # "stateOrdinal":I
    :cond_af
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "reservation"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Reservation;

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 170
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "verifications"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/CheckpointVerifications;

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    .line 172
    sget-object v2, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->COUNTRY:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    iput-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    .line 173
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->setOfficialIdCountryCode(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;

    new-instance v2, Lcom/airbnb/android/activities/OfficialIdActivity$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/OfficialIdActivity$1;-><init>(Lcom/airbnb/android/activities/OfficialIdActivity;)V

    invoke-direct {v0, v2}, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    .line 199
    .local v0, "countriesRequest":Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;->execute()V

    .line 201
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->goToCountry()V

    goto :goto_a4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 249
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 251
    const v0, 0x7f080554

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 253
    return v2
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onDestroy()V

    .line 213
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 263
    :goto_7
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 260
    :pswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->showChecklist()V

    goto :goto_7

    .line 258
    :pswitch_data_10
    .packed-switch 0x7f080554
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onPause()V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mResumed:Z

    .line 236
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mStatusRequest:Lcom/airbnb/android/requests/OfficialIdStatusRequest;

    if-eqz v0, :cond_f

    .line 237
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mStatusRequest:Lcom/airbnb/android/requests/OfficialIdStatusRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/OfficialIdStatusRequest;->cancel()V

    .line 239
    :cond_f
    return-void
.end method

.method public onProgressCancelled()V
    .registers 1

    .prologue
    .line 511
    return-void
.end method

.method public onProgressCompleted()V
    .registers 4

    .prologue
    .line 498
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    if-eqz v1, :cond_9

    .line 499
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 502
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 503
    .local v0, "resultData":Landroid/content/Intent;
    const-string/jumbo v1, "id_type"

    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getOfficialIdTypeDisplayedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->setResult(ILandroid/content/Intent;)V

    .line 506
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->finish()V

    .line 507
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onResume()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mResumed:Z

    .line 245
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    const-string/jumbo v0, "state"

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mState:Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/OfficialIdActivity$OfficialIdState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string/jumbo v0, "id_type"

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v0, "country_code"

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v0, "front_id_uri"

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdFrontUriString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v0, "back_id_uri"

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdBackUriString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v0, "supported_countries"

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mSupportedCountries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 226
    const-string/jumbo v0, "supported_countries_types"

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mTypesForSupportedCountries:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 227
    const-string/jumbo v0, "reservation"

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 228
    const-string/jumbo v0, "verifications"

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 229
    return-void
.end method

.method public onVerfifiedUploadedIDStatus(Lcom/airbnb/android/events/OfficialIDStatusEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/events/OfficialIDStatusEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 533
    invoke-virtual {p1}, Lcom/airbnb/android/events/OfficialIDStatusEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mDidSuccessfullyValidateId:Z

    .line 535
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->doneWithUpload()V

    .line 539
    :goto_11
    return-void

    .line 537
    :cond_12
    invoke-direct {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->displayError()V

    goto :goto_11
.end method

.method public setIdBackUriString(Ljava/lang/String;)V
    .registers 2
    .param p1, "idBackUriString"    # Ljava/lang/String;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdBackUriString:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public setIdFrontUriString(Ljava/lang/String;)V
    .registers 2
    .param p1, "idFrontUriString"    # Ljava/lang/String;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mIdFrontUriString:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setOfficialIdCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "officialIdCountryCode"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdCountryCode:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setOfficialIdType(Ljava/lang/String;)V
    .registers 2
    .param p1, "officialIdType"    # Ljava/lang/String;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setSupportedCountries(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "supportedCountries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mSupportedCountries:Ljava/util/ArrayList;

    .line 429
    return-void
.end method

.method public setTypesForSupportedCountries(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "typesForSupportedCountries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country$Identification;>;>;"
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mTypesForSupportedCountries:Ljava/util/HashMap;

    .line 437
    return-void
.end method

.method public showChecklist()V
    .registers 4

    .prologue
    .line 548
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->newInstance(Lcom/airbnb/android/models/CheckpointVerifications;)Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public showConfirmationButtons(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 552
    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity;->mConfirmationButtons:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    return-void

    .line 552
    :cond_9
    const/4 v0, 0x4

    goto :goto_5
.end method
