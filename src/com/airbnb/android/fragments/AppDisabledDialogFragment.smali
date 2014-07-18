.class public Lcom/airbnb/android/fragments/AppDisabledDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "AppDisabledDialogFragment.java"


# static fields
.field private static final KILL_CODE:Ljava/lang/String; = "abort_mission"

.field private static sPendingAppDisabledDialog:Lcom/airbnb/android/fragments/AppDisabledDialogFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method public static checkIfNeedShowAppDisabled(Landroid/support/v4/app/FragmentManager;)V
    .registers 3
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    const/4 v1, 0x0

    .line 72
    sget-object v0, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->sPendingAppDisabledDialog:Lcom/airbnb/android/fragments/AppDisabledDialogFragment;

    if-eqz v0, :cond_c

    .line 73
    sget-object v0, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->sPendingAppDisabledDialog:Lcom/airbnb/android/fragments/AppDisabledDialogFragment;

    invoke-virtual {v0, p0, v1}, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 74
    sput-object v1, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->sPendingAppDisabledDialog:Lcom/airbnb/android/fragments/AppDisabledDialogFragment;

    .line 76
    :cond_c
    return-void
.end method

.method private static newInstance()Lcom/airbnb/android/fragments/AppDisabledDialogFragment;
    .registers 4

    .prologue
    .line 31
    new-instance v0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v1, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e07a6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;

    return-object v0
.end method

.method public static parseAppDisableJson(Ljava/lang/String;)V
    .registers 8
    .param p0, "killCode"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v2, "abort_mission"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 60
    :try_start_15
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 62
    .local v1, "versionCode":I
    const-string/jumbo v2, "android_eng"

    const/4 v3, 0x0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "app_killed"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "build_code"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4c} :catch_53

    .line 67
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "versionCode":I
    :goto_4c
    invoke-static {}, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->newInstance()Lcom/airbnb/android/fragments/AppDisabledDialogFragment;

    move-result-object v2

    sput-object v2, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->sPendingAppDisabledDialog:Lcom/airbnb/android/fragments/AppDisabledDialogFragment;

    .line 69
    :cond_52
    return-void

    .line 63
    :catch_53
    move-exception v2

    goto :goto_4c
.end method


# virtual methods
.method protected clickSingleButton(I)V
    .registers 4
    .param p1, "requestCodeSingle"    # I

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getAppStoreLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0083

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/AppDisabledDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AppDisabledDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/AppDisabledDialogFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
.end method
