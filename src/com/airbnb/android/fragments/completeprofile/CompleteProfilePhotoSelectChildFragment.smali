.class public Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;
.super Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;
.source "CompleteProfilePhotoSelectChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mChoosePhotoButton:Landroid/widget/Button;

.field private mTakePhotoButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 85
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    sget-object v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Load fragment"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const v2, 0x7f030075

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    .line 41
    .local v0, "activity":Lcom/airbnb/android/activities/CompleteProfileActivity;
    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showProgressBar()V

    .line 43
    const v2, 0x7f08015c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->mTakePhotoButton:Landroid/widget/Button;

    .line 44
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->mTakePhotoButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;Lcom/airbnb/android/activities/CompleteProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v2, 0x7f08015d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->mChoosePhotoButton:Landroid/widget/Button;

    .line 62
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->mChoosePhotoButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment$2;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->isVerifiedIdFlow()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 77
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhotoStartView(Lcom/airbnb/android/utils/Strap;)V

    .line 80
    :cond_50
    return-object v1
.end method
