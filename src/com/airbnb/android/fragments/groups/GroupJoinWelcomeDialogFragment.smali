.class public Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "GroupJoinWelcomeDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_GROUP:Ljava/lang/String; = "group"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private computeDialogHeight()I
    .registers 5

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 40
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 41
    .local v2, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 42
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 43
    .local v1, "screenHeight":I
    mul-int/lit8 v3, v1, 0x7

    div-int/lit8 v3, v3, 0xa

    return v3
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;
    .registers 4
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 29
    new-instance v1, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;-><init>()V

    .line 30
    .local v1, "f":Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "group"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030047

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 51
    .local v8, "view":Landroid/view/View;
    const v10, 0x7f0800c9

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 52
    .local v7, "scroll":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 53
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->computeDialogHeight()I

    move-result v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "group"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/Group;

    .line 57
    .local v2, "group":Lcom/airbnb/android/models/groups/Group;
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getOrganizer()Lcom/airbnb/android/models/User;

    move-result-object v5

    .line 58
    .local v5, "organzier":Lcom/airbnb/android/models/User;
    if-eqz v5, :cond_47

    .line 59
    const v10, 0x7f0800ca

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/AirImageView;

    .line 60
    .local v3, "heroImage":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getPictureUrlForThumbnail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 63
    .end local v3    # "heroImage":Lcom/airbnb/android/views/AirImageView;
    :cond_47
    const v10, 0x7f0800cb

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 64
    .local v4, "messageTV":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getWelcomeMessage()Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "welcomeMessage":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5d

    .line 67
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_5d
    const v10, 0x7f0800be

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 72
    .local v1, "dismissButton":Landroid/widget/Button;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 77
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v10, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment$1;

    invoke-direct {v10, p0, v0}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-object v0
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
