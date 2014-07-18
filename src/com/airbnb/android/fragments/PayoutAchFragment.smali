.class public Lcom/airbnb/android/fragments/PayoutAchFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "PayoutAchFragment.java"


# static fields
.field private static final ACH_ACCOUNT_TYPE:Ljava/lang/String; = "ach_account_type"

.field private static final ACH_ROUTING_LENGTH:I = 0x9

.field private static final DIALOG_REQ_SUBMIT_ACH:I = 0x297

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountNumber:Landroid/widget/EditText;

.field private mAchAccountType:Ljava/lang/String;

.field private mAchRequest:Lcom/airbnb/android/requests/PayoutAchRequest;

.field private mPersonName:Landroid/widget/EditText;

.field private mRoutingNumber:Landroid/widget/EditText;

.field private mSubmitButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PayoutAchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/PayoutAchFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutAchFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->validateAchInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/PayoutAchFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutAchFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAchAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/PayoutAchFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutAchFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mRoutingNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/PayoutAchFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutAchFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAccountNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/PayoutAchFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutAchFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mPersonName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/PayoutAchFragment;)Lcom/airbnb/android/requests/PayoutAchRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutAchFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAchRequest:Lcom/airbnb/android/requests/PayoutAchRequest;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/PayoutAchFragment;
    .registers 4
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v1, Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/PayoutAchFragment;-><init>()V

    .line 46
    .local v1, "f":Lcom/airbnb/android/fragments/PayoutAchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "ach_account_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method

.method private submitAchInfo()V
    .registers 10

    .prologue
    .line 88
    const v0, 0x7f0e059d

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v8

    .line 90
    .local v8, "progressDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    new-instance v0, Lcom/airbnb/android/fragments/PayoutAchFragment$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/PayoutAchFragment$2;-><init>(Lcom/airbnb/android/fragments/PayoutAchFragment;)V

    invoke-virtual {v8, v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Lcom/airbnb/android/fragments/AirDialogFragments;->showDialog(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/DialogFragment;Landroid/support/v4/app/Fragment;)V

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/PayoutActivity;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "countryCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mPersonName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "personName":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mRoutingNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "routingNumber":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAccountNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "accountNumber":Ljava/lang/String;
    new-instance v0, Lcom/airbnb/android/requests/PayoutAchRequest;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/PayoutActivity;->getTrustParameters()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    iget-object v4, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAchAccountType:Ljava/lang/String;

    new-instance v7, Lcom/airbnb/android/fragments/PayoutAchFragment$3;

    invoke-direct {v7, p0, v8}, Lcom/airbnb/android/fragments/PayoutAchFragment$3;-><init>(Lcom/airbnb/android/fragments/PayoutAchFragment;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/requests/PayoutAchRequest;-><init>(Lcom/airbnb/android/utils/Strap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAchRequest:Lcom/airbnb/android/requests/PayoutAchRequest;

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAchRequest:Lcom/airbnb/android/requests/PayoutAchRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/PayoutAchRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 140
    return-void
.end method

.method private validateAchInfo()Z
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 146
    iget-object v9, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mRoutingNumber:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "routing":Ljava/lang/String;
    iget-object v9, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAccountNumber:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "account":Ljava/lang/String;
    iget-object v9, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mPersonName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_69

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_69

    move v5, v7

    .line 151
    .local v5, "routingOk":Z
    :goto_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_6b

    move v1, v7

    .line 152
    .local v1, "accountOk":Z
    :goto_3d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_6d

    move v3, v7

    .line 154
    .local v3, "nameOk":Z
    :goto_4b
    const/4 v6, 0x0

    .line 155
    .local v6, "toastText":Ljava/lang/String;
    if-nez v5, :cond_6f

    .line 156
    const v9, 0x7f0e058a

    invoke-virtual {p0, v9}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 162
    :cond_55
    :goto_55
    if-eqz v6, :cond_62

    .line 163
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 166
    :cond_62
    if-eqz v5, :cond_83

    if-eqz v1, :cond_83

    if-eqz v3, :cond_83

    :goto_68
    return v7

    .end local v1    # "accountOk":Z
    .end local v3    # "nameOk":Z
    .end local v5    # "routingOk":Z
    .end local v6    # "toastText":Ljava/lang/String;
    :cond_69
    move v5, v8

    .line 150
    goto :goto_2f

    .restart local v5    # "routingOk":Z
    :cond_6b
    move v1, v8

    .line 151
    goto :goto_3d

    .restart local v1    # "accountOk":Z
    :cond_6d
    move v3, v8

    .line 152
    goto :goto_4b

    .line 157
    .restart local v3    # "nameOk":Z
    .restart local v6    # "toastText":Ljava/lang/String;
    :cond_6f
    if-nez v1, :cond_79

    .line 158
    const v9, 0x7f0e0585

    invoke-virtual {p0, v9}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_55

    .line 159
    :cond_79
    if-nez v3, :cond_55

    .line 160
    const v9, 0x7f0e0588

    invoke-virtual {p0, v9}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_55

    :cond_83
    move v7, v8

    .line 166
    goto :goto_68
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_c

    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 179
    :goto_6
    return-void

    .line 173
    :pswitch_7
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->submitAchInfo()V

    goto :goto_6

    .line 171
    nop

    :pswitch_data_c
    .packed-switch 0x297
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v1, 0x7f0300cb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ach_account_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAchAccountType:Ljava/lang/String;

    .line 58
    const v1, 0x7f080240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mRoutingNumber:Landroid/widget/EditText;

    .line 59
    const v1, 0x7f080241

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mAccountNumber:Landroid/widget/EditText;

    .line 60
    const v1, 0x7f080242

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mPersonName:Landroid/widget/EditText;

    .line 61
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mSubmitButton:Landroid/widget/Button;

    .line 63
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v2, Lcom/airbnb/android/fragments/PayoutAchFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PayoutAchFragment$1;-><init>(Lcom/airbnb/android/fragments/PayoutAchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 83
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onPause()V

    .line 84
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    return-void
.end method
