.class public Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "AccountVerificationPhonePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;
    }
.end annotation


# instance fields
.field private mPhoneNumberId:J

.field private mPhoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/SecurityCheckPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field mPhonePickerList:Lcom/airbnb/android/views/LinearListView;

.field mPhoneSMSOptions:Landroid/view/View;

.field mSendPhoneCallButton:Landroid/widget/TextView;

.field mSendSMSButton:Landroid/widget/TextView;

.field mTitleText:Landroid/widget/TextView;

.field mVerificationType:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumbers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->setupPhoneNumbersList()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumberId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;J)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumberId:J

    return-wide p1
.end method

.method public static newInstance(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .param p0, "verificationType"    # I

    .prologue
    .line 49
    new-instance v1, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;-><init>()V

    .line 50
    .local v1, "f":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "verification_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private setupPhoneNumbersList()V
    .registers 5

    .prologue
    .line 133
    new-instance v0, Lcom/airbnb/android/adapters/PhoneNumberPickerAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumbers:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/adapters/PhoneNumberPickerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 134
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhonePickerList:Lcom/airbnb/android/views/LinearListView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_38

    .line 149
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 150
    return-void

    .line 141
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v1, "android.intent.extra.EMAIL"

    const v2, 0x7f0e0036

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const v1, 0x7f0e06e2

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    .line 139
    :pswitch_data_38
    .packed-switch 0x3e9
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->values()[Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "verification_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mVerificationType:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const v3, 0x7f030065

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackSelectPhoneImpression(Lcom/airbnb/android/utils/Strap;)V

    .line 69
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/AccountVerificationActivity;

    .line 72
    .local v0, "activity":Lcom/airbnb/android/activities/AccountVerificationActivity;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/airbnb/android/activities/AccountVerificationActivity;->showLoader(Z)V

    .line 74
    new-instance v3, Lcom/airbnb/android/requests/GetSecurityCheckRequest;

    new-instance v4, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;-><init>(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;Lcom/airbnb/android/activities/AccountVerificationActivity;)V

    invoke-direct {v3, v4}, Lcom/airbnb/android/requests/GetSecurityCheckRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v3, p0}, Lcom/airbnb/android/requests/GetSecurityCheckRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 96
    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhonePickerList:Lcom/airbnb/android/views/LinearListView;

    new-instance v4, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$2;-><init>(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 106
    new-instance v1, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$3;-><init>(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;Lcom/airbnb/android/activities/AccountVerificationActivity;)V

    .line 126
    .local v1, "clickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mSendPhoneCallButton:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mSendSMSButton:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-object v2
.end method
