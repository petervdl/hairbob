.class public Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CancellationPolicyDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_DEFAULT_VALUE:Ljava/lang/String; = "value"

.field private static final ARG_POLICIES:Ljava/lang/String; = "policies"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_POLICY:Ljava/lang/String; = "policy"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/CancellationPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/util/ArrayList;)Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;
    .registers 6
    .param p0, "titleId"    # I
    .param p1, "cancellationPolicyKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/CancellationPolicy;",
            ">;)",
            "Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/CancellationPolicy;>;"
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;-><init>()V

    .line 32
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    if-eqz p1, :cond_18

    .line 35
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_18
    const-string/jumbo v2, "policies"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 46
    .local v3, "titleId":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "selected":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "policies"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->mPolicies:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "currentSelected":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->mPolicies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_43

    .line 52
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->mPolicies:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/CancellationPolicy;

    invoke-virtual {v4}, Lcom/airbnb/android/models/CancellationPolicy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 53
    move v0, v1

    .line 51
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 57
    :cond_43
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0800b7

    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->mPolicies:Ljava/util/List;

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    new-instance v6, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
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
