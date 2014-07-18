.class public Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "GroupsUserDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_GROUP:Ljava/lang/String; = "group"

.field private static final ARG_USER:Ljava/lang/String; = "user"


# instance fields
.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mUser:Lcom/airbnb/android/models/User;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)Lcom/airbnb/android/models/User;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->emailHost()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->showVerificationModal()V

    return-void
.end method

.method private emailHost()V
    .registers 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->newInstance(Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    move-result-object v0

    .line 105
    .local v0, "f":Lcom/airbnb/android/fragments/groups/EmailUserFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;
    .registers 5
    .param p0, "user"    # Lcom/airbnb/android/models/User;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 32
    new-instance v1, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;-><init>()V

    .line 33
    .local v1, "f":Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    const-string/jumbo v2, "group"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method

.method private setupActionButtons(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 67
    new-instance v1, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)V

    .line 90
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    const v5, 0x7f0800d2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, "txtEmail":Landroid/widget/TextView;
    const v5, 0x7f0800d4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 93
    .local v4, "txtProfile":Landroid/widget/TextView;
    const v5, 0x7f02013e

    invoke-static {v8}, Lcom/airbnb/android/utils/MiscUtils;->getSubmitColorResourceId(Z)I

    move-result v6

    invoke-static {v5, v6}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "emailIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    const v5, 0x7f020139

    invoke-static {v8}, Lcom/airbnb/android/utils/MiscUtils;->getSubmitColorResourceId(Z)I

    move-result v6

    invoke-static {v5, v6}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 97
    .local v2, "profileIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v2, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method private showVerificationModal()V
    .registers 4

    .prologue
    .line 109
    invoke-static {}, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;->newInstance()Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;

    move-result-object v0

    .line 110
    .local v0, "f":Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/groups/VerifiedIdRequiredFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030049

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 44
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/User;

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;

    .line 46
    const-string/jumbo v4, "group"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/groups/Group;

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 47
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;

    if-nez v4, :cond_37

    .line 48
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "GroupsUserDialogFragment does not have a valid Host arg"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 51
    :cond_37
    const v4, 0x7f0800d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, "userName":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v4, 0x7f0800d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/HaloImageView;

    .line 55
    .local v1, "mAvatar":Lcom/airbnb/android/views/HaloImageView;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v1, v4}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 57
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 60
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mOptionsDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->setupActionButtons(Landroid/view/View;)V

    .line 62
    const-string/jumbo v4, "impressions"

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackUserCard(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 63
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mOptionsDialog:Landroid/app/AlertDialog;

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

.method protected viewProfile()V
    .registers 5

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_16

    .line 116
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    const-string/jumbo v3, "user_profile"

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/activities/ROActivity;->intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    :cond_16
    return-void
.end method
