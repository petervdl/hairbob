.class public Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "EndpointSelectorDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$2;,
        Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;,
        Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;)Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;

    return-object v0
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;
    .registers 2

    .prologue
    .line 32
    new-instance v1, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;-><init>()V

    .line 33
    .local v1, "f":Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v3, "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "https://api.airbnb.com/"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const-string/jumbo v4, "http://ec2mobile.dyndns.org/"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-string/jumbo v4, "http://ec2asia.dyndns.org/"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-string/jumbo v4, "http://ec2home.dyndns.org/"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const-string/jumbo v4, "http://ec2magical.dyndns.org/"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-string/jumbo v4, "http://ec2brand.dyndns.org/"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-string/jumbo v4, "http://api.localhost.airbnb.com/"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4, v5, v5, v3}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 51
    .local v0, "adapter":Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e015d

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 53
    new-instance v4, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;

    invoke-direct {v4, p0, v3}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;Ljava/util/List;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 69
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

.method public setListener(Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;

    .line 75
    return-void
.end method
