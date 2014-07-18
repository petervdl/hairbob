.class Lcom/airbnb/android/activities/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->checkForSignIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/GetActiveAccountRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;

.field final synthetic val$api:Lcom/airbnb/android/AirbnbApi;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;Lcom/airbnb/android/AirbnbApi;)V
    .registers 3

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$11;->this$0:Lcom/airbnb/android/activities/MainActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/MainActivity$11;->val$api:Lcom/airbnb/android/AirbnbApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1474
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/GetActiveAccountRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 1453
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$11;->val$api:Lcom/airbnb/android/AirbnbApi;

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->hasCurrentUser()Z

    move-result v4

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$11;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mIsResumed:Z
    invoke-static {v4}, Lcom/airbnb/android/activities/MainActivity;->access$500(Lcom/airbnb/android/activities/MainActivity;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1454
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.airbnb.android.intent.action.USER_SIGNED_IN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$11;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1457
    iget-boolean v4, p1, Lcom/airbnb/android/requests/GetActiveAccountRequest;->tosRequired:Z

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$11;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mShownTosDialog:Z
    invoke-static {v4}, Lcom/airbnb/android/activities/MainActivity;->access$900(Lcom/airbnb/android/activities/MainActivity;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 1458
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$11;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "dialog"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1459
    .local v0, "currentDialog":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$11;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1460
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v0, :cond_49

    .line 1461
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1463
    :cond_49
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1464
    invoke-static {}, Lcom/airbnb/android/fragments/TOSDialogFragment;->newInstance()Lcom/airbnb/android/fragments/TOSDialogFragment;

    move-result-object v1

    .line 1465
    .local v1, "dialog":Lcom/airbnb/android/fragments/TOSDialogFragment;
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$11;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v1, v4}, Lcom/airbnb/android/fragments/TOSDialogFragment;->setTOSListener(Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;)V

    .line 1466
    const-string/jumbo v4, "dialog"

    invoke-virtual {v1, v2, v4}, Lcom/airbnb/android/fragments/TOSDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1467
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$11;->this$0:Lcom/airbnb/android/activities/MainActivity;

    const/4 v5, 0x1

    # setter for: Lcom/airbnb/android/activities/MainActivity;->mShownTosDialog:Z
    invoke-static {v4, v5}, Lcom/airbnb/android/activities/MainActivity;->access$902(Lcom/airbnb/android/activities/MainActivity;Z)Z

    .line 1470
    .end local v0    # "currentDialog":Landroid/support/v4/app/Fragment;
    .end local v1    # "dialog":Lcom/airbnb/android/fragments/TOSDialogFragment;
    .end local v2    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_62
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1448
    check-cast p1, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/MainActivity$11;->onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V

    return-void
.end method
