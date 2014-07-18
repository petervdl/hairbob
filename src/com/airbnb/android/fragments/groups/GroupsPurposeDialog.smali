.class public Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "GroupsPurposeDialog.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_GROUP:Ljava/lang/String; = "group"


# instance fields
.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mOptionsDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;
    .registers 4
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 26
    new-instance v1, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;-><init>()V

    .line 27
    .local v1, "f":Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "group"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030046

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 37
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v7, "group"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/models/groups/Group;

    iput-object v7, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 39
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mGroup:Lcom/airbnb/android/models/groups/Group;

    if-nez v7, :cond_2c

    .line 40
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "GroupsPurposeDialog does not have a valid Group arg"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 43
    :cond_2c
    const v7, 0x7f0800c4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, "name":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Group;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v7, 0x7f0800c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 47
    .local v5, "purpose":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Group;->getPurpose()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const/16 v7, 0xf

    invoke-static {v5, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 49
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Group;->getOrganizer()Lcom/airbnb/android/models/User;

    move-result-object v3

    .line 50
    .local v3, "organizer":Lcom/airbnb/android/models/User;
    const v7, 0x7f0800c6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/HaloImageView;

    .line 51
    .local v1, "avatar":Lcom/airbnb/android/views/HaloImageView;
    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 52
    const v7, 0x7f0800c7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 53
    .local v4, "organizerName":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v7, 0x7f0800c8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog$1;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog$1;-><init>(Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 64
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v7
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
