.class public Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "VerifiedIdDialogSummaryFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment$VerifiedIdDialogFragment;
    }
.end annotation


# static fields
.field private static final VERIFICATIONS_EXTRA:Ljava/lang/String; = "verifications"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 21
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/CheckpointVerifications;)Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;
    .registers 4
    .param p0, "verifications"    # Lcom/airbnb/android/models/CheckpointVerifications;

    .prologue
    .line 28
    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;-><init>()V

    .line 30
    .local v1, "fragment":Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "verifications"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method

.method private showCheckmark(Landroid/widget/TextView;Z)V
    .registers 7
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 84
    if-eqz p2, :cond_11

    const v0, 0x7f0a0096

    .line 86
    .local v0, "checkmarkColorId":I
    :goto_6
    const v2, 0x7f020122

    invoke-static {v2, v0}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 88
    .local v1, "greenCheckmark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void

    .line 84
    .end local v0    # "checkmarkColorId":I
    .end local v1    # "greenCheckmark":Landroid/graphics/drawable/Drawable;
    :cond_11
    const v0, 0x7f0a00a5

    goto :goto_6
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 78
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 80
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15

    .prologue
    const/4 v10, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v6, "VerifiedIdDialogSummaryFragment#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_ab

    .line 39
    :goto_a
    const v5, 0x7f0300f7

    invoke-virtual {p1, v5, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 41
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "verifications"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/CheckpointVerifications;

    .line 43
    .local v3, "verifications":Lcom/airbnb/android/models/CheckpointVerifications;
    const v5, 0x7f0802c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0040

    invoke-virtual {v3}, Lcom/airbnb/android/models/CheckpointVerifications;->numberStepsRemaining()I

    move-result v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/airbnb/android/models/CheckpointVerifications;->numberStepsRemaining()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v5, 0x7f0802c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/airbnb/android/models/CheckpointVerifications;->profilePhotoComplete()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->showCheckmark(Landroid/widget/TextView;Z)V

    .line 49
    const v5, 0x7f0802c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "tv":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 50
    .restart local v2    # "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/airbnb/android/models/CheckpointVerifications;->emailVerificationComplete()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->showCheckmark(Landroid/widget/TextView;Z)V

    .line 52
    const v5, 0x7f0802c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "tv":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 53
    .restart local v2    # "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/airbnb/android/models/CheckpointVerifications;->phoneComplete()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->showCheckmark(Landroid/widget/TextView;Z)V

    .line 55
    const v5, 0x7f0802c6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "tv":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 56
    .restart local v2    # "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/airbnb/android/models/CheckpointVerifications;->offlineVerificationComplete()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->showCheckmark(Landroid/widget/TextView;Z)V

    .line 58
    const v5, 0x7f0802c7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "tv":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 59
    .restart local v2    # "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/airbnb/android/models/CheckpointVerifications;->onlineVerificationComplete()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;->showCheckmark(Landroid/widget/TextView;Z)V

    .line 61
    const v5, 0x7f0802c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, "okayButton":Landroid/widget/Button;
    new-instance v5, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/VerifiedIdDialogSummaryFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v4

    .line 4294967295
    .end local v0    # "okayButton":Landroid/widget/Button;
    .end local v1    # "title":Landroid/widget/TextView;
    .end local v2    # "tv":Landroid/widget/TextView;
    .end local v3    # "verifications":Lcom/airbnb/android/models/CheckpointVerifications;
    .end local v4    # "view":Landroid/view/View;
    :catch_ab
    move-exception v5

    const/4 v5, 0x0

    :try_start_ad
    const-string/jumbo v6, "VerifiedIdDialogSummaryFragment#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b4} :catch_ab

    goto/16 :goto_a
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
