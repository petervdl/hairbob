.class public Lcom/airbnb/android/fragments/GenderSelectionFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "GenderSelectionFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_OLD_GENDER:Ljava/lang/String; = "old_gender"

.field public static final EXTRA_NEW_GENDER:Ljava/lang/String; = "new_gender"

.field public static final REQUEST_CODE_GENDER:I = 0x2bd


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;)Lcom/airbnb/android/fragments/GenderSelectionFragment;
    .registers 4
    .param p0, "gender"    # Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    .prologue
    .line 23
    new-instance v1, Lcom/airbnb/android/fragments/GenderSelectionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/GenderSelectionFragment;-><init>()V

    .line 24
    .local v1, "f":Lcom/airbnb/android/fragments/GenderSelectionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "old_gender"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/GenderSelectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/GenderSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "old_gender"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    .line 33
    .local v3, "gender":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    new-instance v0, Lcom/airbnb/android/adapters/EditProfileGenderAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/GenderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4, v6, v6, v3}, Lcom/airbnb/android/adapters/EditProfileGenderAdapter;-><init>(Landroid/content/Context;IILcom/airbnb/android/interfaces/EditProfileInterface$Gender;)V

    .line 35
    .local v0, "adapter":Lcom/airbnb/android/adapters/EditProfileGenderAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/GenderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e0185

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 37
    new-instance v4, Lcom/airbnb/android/fragments/GenderSelectionFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/GenderSelectionFragment$1;-><init>(Lcom/airbnb/android/fragments/GenderSelectionFragment;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 48
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
