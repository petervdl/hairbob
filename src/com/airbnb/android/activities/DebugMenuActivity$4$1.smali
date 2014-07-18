.class Lcom/airbnb/android/activities/DebugMenuActivity$4$1;
.super Ljava/lang/Object;
.source "DebugMenuActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/DebugMenuActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/DebugMenuActivity$4;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 132
    iput-object p1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

    iput-object p2, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/DebugMenuActivity$4$1;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/DebugMenuActivity$4$1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->loginWithToken(Ljava/lang/String;)V

    return-void
.end method

.method private loginWithToken(Ljava/lang/String;)V
    .registers 5
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    # getter for: Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountSubtitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/airbnb/android/activities/DebugMenuActivity;->access$300(Lcom/airbnb/android/activities/DebugMenuActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/DebugMenuActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 169
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->logout()V

    .line 170
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    # getter for: Lcom/airbnb/android/activities/DebugMenuActivity;->mAirbnbApi:Lcom/airbnb/android/AirbnbApi;
    invoke-static {v0}, Lcom/airbnb/android/activities/DebugMenuActivity;->access$100(Lcom/airbnb/android/activities/DebugMenuActivity;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/android/AirbnbApi;->setAccessToken(Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity$4$1;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->execute()V

    .line 189
    return-void
.end method


# virtual methods
.method public onAccountSelected(Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;)V
    .registers 3
    .param p1, "account"    # Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->loginWithToken(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onBecomeUserSelected()V
    .registers 5

    .prologue
    .line 146
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "tokenEditText":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0157

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$1;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$1;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity$4$1;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 162
    return-void
.end method

.method public onNewAccountSelected()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/airbnb/android/activities/SignInActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/DebugMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method
