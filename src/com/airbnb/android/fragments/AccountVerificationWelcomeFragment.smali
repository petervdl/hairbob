.class public Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "AccountVerificationWelcomeFragment.java"


# instance fields
.field mBeginButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 32
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;->mBeginButton:Landroid/widget/Button;

    new-instance v2, Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment$1;-><init>(Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-object v0
.end method
