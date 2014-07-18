.class public Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;
.super Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;
.source "OfflineIdFragment.java"


# static fields
.field public static final SCAN_ID_REQUEST:I = 0x9859


# instance fields
.field private mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

.field private mVerificationSuccessDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCircleBadgeView()Lcom/airbnb/android/views/CircleBadgeView;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    return-object v0
.end method

.method public getContentFragmentId()I
    .registers 2

    .prologue
    .line 63
    const v0, 0x7f0802ca

    return v0
.end method

.method public getVerificationSuccessDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->mVerificationSuccessDescription:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 46
    const v1, 0x9859

    if-ne p1, v1, :cond_12

    .line 47
    const/4 v1, -0x1

    if-ne p2, v1, :cond_11

    .line 48
    const-string/jumbo v1, "id_type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "idType":Ljava/lang/String;
    iput-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->mVerificationSuccessDescription:Ljava/lang/String;

    .line 54
    .end local v0    # "idType":Ljava/lang/String;
    :cond_11
    :goto_11
    return-void

    .line 52
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_11
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    const v3, 0x7f0300f8

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 33
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0802c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/CircleBadgeView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    .line 34
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/CircleBadgeView;->initializeAsInactiveBadge()V

    .line 36
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    move-result-object v0

    .line 37
    .local v0, "contentFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 38
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0802ca

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 39
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 41
    return-object v2
.end method

.method public setActiveState()V
    .registers 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;->displayLoaderFrame(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0802cc

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    .line 82
    .local v0, "childFragment":Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->enableButtons()V

    .line 83
    return-void
.end method

.method public setPendingState()V
    .registers 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;->displayLoaderFrame(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0802cc

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;

    .line 75
    .local v0, "childFragment":Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfflineIdChildFragment;->disableButtons()V

    .line 76
    return-void
.end method
