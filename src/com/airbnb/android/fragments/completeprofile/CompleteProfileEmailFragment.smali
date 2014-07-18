.class public Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;
.super Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;
.source "CompleteProfileEmailFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;


# instance fields
.field private mCircleBadgeViewPhoto:Lcom/airbnb/android/views/CircleBadgeView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 44
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const v1, 0x7f030080

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/CircleBadgeView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;->mCircleBadgeViewPhoto:Lcom/airbnb/android/views/CircleBadgeView;

    .line 28
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;->mCircleBadgeViewPhoto:Lcom/airbnb/android/views/CircleBadgeView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/CircleBadgeView;->initializeAsInactiveBadge()V

    .line 31
    if-nez p3, :cond_2f

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showProgressBar()V

    .line 34
    invoke-static {}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;->showChildFragment(Landroid/support/v4/app/Fragment;)V

    .line 36
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackEmailStartView(Lcom/airbnb/android/utils/Strap;)V

    .line 39
    :cond_2f
    return-object v0
.end method
