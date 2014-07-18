.class public Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CheckInOutTimeDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_DEFAULT_VALUE:Ljava/lang/String; = "value"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_HOUR:Ljava/lang/String; = "hour"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/Integer;)Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;
    .registers 6
    .param p0, "titleId"    # I
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 27
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;-><init>()V

    .line 28
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    if-eqz p1, :cond_1c

    .line 31
    const-string/jumbo v2, "value"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_1c
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 41
    .local v3, "titleId":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "hourString":Ljava/lang/String;
    const/4 v1, -0x1

    .line 43
    .local v1, "hour":I
    if-eqz v2, :cond_1d

    .line 45
    :try_start_19
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1c} :catch_5e

    move-result v1

    .line 51
    :cond_1d
    :goto_1d
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/adapters/managelisting/TimeListAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x1090012

    const v8, 0x1020014

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/airbnb/android/adapters/managelisting/TimeListAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 46
    :catch_5e
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
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
