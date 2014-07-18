.class public Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "StayLengthDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_DEFAULT_VALUE:Ljava/lang/String; = "value"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_NIGHTS:Ljava/lang/String; = "nights"

.field public static final MAX_NIGHTS:I = 0x465

.field public static final MIN_NIGHTS:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public static newInstance(II)Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;
    .registers 5
    .param p0, "titleId"    # I
    .param p1, "nights"    # I

    .prologue
    .line 37
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;-><init>()V

    .line 38
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, "titleId":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "nights":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03004d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0800d7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 53
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 56
    const v4, 0x7f0800d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, "txtNights":Landroid/widget/TextView;
    const v4, 0x7f0e053e

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 59
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 113
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-void
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
