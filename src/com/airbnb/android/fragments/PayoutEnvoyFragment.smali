.class public Lcom/airbnb/android/fragments/PayoutEnvoyFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "PayoutEnvoyFragment.java"


# static fields
.field public static final ENVOY_ADD_SUCCESS:I = 0x1c8

.field private static final ENVOY_WEBVIEW:I = 0x5

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mEnvoyWebviewLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/PayoutEnvoyFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->mEnvoyWebviewLaunched:Z

    return v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/PayoutEnvoyFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutEnvoyFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->mEnvoyWebviewLaunched:Z

    return p1
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/PayoutEnvoyFragment;
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v1, 0x5

    if-ne p1, v1, :cond_24

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->mEnvoyWebviewLaunched:Z

    .line 106
    const/16 v1, 0x1c8

    if-ne p2, v1, :cond_23

    .line 108
    const v1, 0x7f0e059c

    const/16 v2, 0x5dc

    invoke-static {v1, v3, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->newInstance(ILjava/lang/String;I)Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;

    move-result-object v0

    .line 109
    .local v0, "successDialog":Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;
    new-instance v1, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$2;-><init>(Lcom/airbnb/android/fragments/PayoutEnvoyFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->setDialogCompleteListener(Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 121
    .end local v0    # "successDialog":Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;
    :cond_23
    :goto_23
    return-void

    .line 119
    :cond_24
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_23
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 41
    const v1, 0x7f0300cd

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "v":Landroid/view/View;
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->mEnvoyWebviewLaunched:Z

    .line 44
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->mContinueButton:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->mContinueButton:Landroid/widget/Button;

    new-instance v2, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;-><init>(Lcom/airbnb/android/fragments/PayoutEnvoyFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-object v0
.end method
