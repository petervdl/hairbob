.class public Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "AccountVerificationPhoneCodeFragment.java"


# static fields
.field private static final ARG_PHONE_ID:Ljava/lang/String; = "phone_id"


# instance fields
.field mBackButton:Landroid/widget/Button;

.field mPhoneCodeInput:Landroid/widget/EditText;

.field private mPhoneNumberId:J

.field mSubmitCodeButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mPhoneNumberId:J

    return-wide v0
.end method

.method public static newInstance(J)Landroid/support/v4/app/Fragment;
    .registers 5
    .param p0, "phoneNumberId"    # J

    .prologue
    .line 34
    new-instance v1, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;-><init>()V

    .line 35
    .local v1, "f":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "phone_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const v1, 0x7f030064

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackEnterCodeImpression(Lcom/airbnb/android/utils/Strap;)V

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "phone_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mPhoneNumberId:J

    .line 49
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 51
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mBackButton:Landroid/widget/Button;

    new-instance v2, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$1;-><init>(Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mSubmitCodeButton:Landroid/widget/Button;

    new-instance v2, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$2;-><init>(Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->mPhoneCodeInput:Landroid/widget/EditText;

    new-instance v2, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment$3;-><init>(Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 82
    return-object v0
.end method
