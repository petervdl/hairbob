.class public Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;
.super Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;
.source "CompleteProfileEmailChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;


# static fields
.field private static final KEYBOARD_DELAY_MILLISECONDS:I = 0x32

.field private static final SAVED_EMAIL:Ljava/lang/String; = "email"

.field private static final SAVED_SENT_EMAIL:Ljava/lang/String; = "sent_email"


# instance fields
.field private mEmailAddress:Landroid/widget/EditText;

.field private mEmailInstructions:Landroid/widget/TextView;

.field private mEmailStatus:Landroid/widget/TextView;

.field private mFragment:Landroid/widget/LinearLayout;

.field private mSendButton:Landroid/widget/Button;

.field private mSentEmail:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mFragment:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSentEmail:Z

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->setSentEmailState()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;-><init>()V

    return-object v0
.end method

.method private setSentEmailState()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailInstructions:Landroid/widget/TextView;

    const v1, 0x7f0e07bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSendButton:Landroid/widget/Button;

    const v1, 0x7f0e07e5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 189
    return-void
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 192
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v2, 0x7f030071

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showProgressBar()V

    .line 67
    const v2, 0x7f080152

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mFragment:Landroid/widget/LinearLayout;

    .line 68
    const v2, 0x7f080155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;

    .line 69
    const v2, 0x7f080156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSendButton:Landroid/widget/Button;

    .line 70
    const v2, 0x7f080153

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailStatus:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f080154

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailInstructions:Landroid/widget/TextView;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "currentEmail":Ljava/lang/String;
    if-eqz p3, :cond_59

    .line 75
    const-string/jumbo v2, "email"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string/jumbo v2, "sent_email"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSentEmail:Z

    .line 79
    :cond_59
    if-nez v0, :cond_6b

    .line 80
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_6b
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setUserEmailAddress(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$3;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSendButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSentEmail:Z

    if-eqz v2, :cond_a6

    .line 179
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->setSentEmailState()V

    .line 182
    :cond_a6
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    const-string/jumbo v0, "email"

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "sent_email"

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSentEmail:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method
