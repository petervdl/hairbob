.class public Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AccountSelectorDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$2;,
        Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;,
        Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;
    }
.end annotation


# static fields
.field private static final KEY_USERS:Ljava/lang/String; = "users"


# instance fields
.field private mListener:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mUsers:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance(Ljava/util/List;)Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;",
            ">;)",
            "Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;>;"
    new-instance v1, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;-><init>()V

    .line 39
    .local v1, "f":Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "users"

    check-cast p0, Ljava/io/Serializable;

    .end local p0    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;>;"
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "users"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mUsers:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mUsers:Ljava/util/List;

    invoke-direct {v0, v3, v5, v5, v4}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 52
    .local v0, "adapter":Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e015d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 54
    new-instance v3, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 73
    .local v1, "alert":Landroid/app/AlertDialog;
    return-object v1
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public setListener(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;

    .line 79
    return-void
.end method
