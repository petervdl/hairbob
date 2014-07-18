.class public Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "HostHomeFuxDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ARG_BUTTON_ID:Ljava/lang/String; = "button_id"

.field private static final ARG_CONTENT:Ljava/lang/String; = "content"

.field private static final ARG_CONTENT_ID:Ljava/lang/String; = "content_id"

.field private static final ARG_DRAWABLE_ID:Ljava/lang/String; = "drawable_id"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field private static final ARG_TITLE_ID:Ljava/lang/String; = "title_id"

.field private static final FUX:Ljava/lang/String; = "fux_dialog"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mPressedOK:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->mPressedOK:Z

    return p1
.end method

.method public static newInstance(IIII)Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;
    .registers 7
    .param p0, "drawableId"    # I
    .param p1, "titleId"    # I
    .param p2, "contentId"    # I
    .param p3, "buttonId"    # I

    .prologue
    .line 42
    new-instance v1, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;-><init>()V

    .line 43
    .local v1, "f":Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "drawable_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string/jumbo v2, "title_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string/jumbo v2, "content_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string/jumbo v2, "button_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;
    .registers 6
    .param p0, "drawableId"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v1, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;-><init>()V

    .line 56
    .local v1, "f":Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "drawable_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method

.method private setClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 131
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 17

    .prologue
    :try_start_0
    iget-object v10, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v11, "HostHomeFuxDialogFragment#onCreateView"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_8b

    .line 68
    :goto_9
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 70
    const v10, 0x7f030043

    const/4 v11, 0x0

    invoke-virtual {p1, v10, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 72
    .local v9, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "args":Landroid/os/Bundle;
    const v10, 0x7f0800bf

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 75
    .local v4, "headerImage":Landroid/widget/ImageView;
    const-string/jumbo v10, "drawable_id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 76
    .local v5, "icon":I
    if-eqz v5, :cond_96

    .line 77
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :goto_32
    const v10, 0x7f0800b7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 83
    .local v7, "title":Landroid/widget/TextView;
    const-string/jumbo v10, "title_id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 84
    .local v8, "titleId":I
    if-nez v8, :cond_9c

    .line 85
    const-string/jumbo v10, "title"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_4e
    const v10, 0x7f0800c0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 91
    .local v2, "content":Landroid/widget/TextView;
    const-string/jumbo v10, "content_id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 92
    .local v3, "contentId":I
    if-nez v3, :cond_a0

    .line 93
    const-string/jumbo v10, "content"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_6a
    const-string/jumbo v10, "button_id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, "buttonId":I
    const v10, 0x7f0800c1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/StickyButton;

    .line 101
    .local v6, "stickyButton":Lcom/airbnb/android/views/StickyButton;
    if-lez v1, :cond_a4

    .end local v1    # "buttonId":I
    :goto_7c
    invoke-virtual {v6, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 102
    new-instance v10, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;)V

    invoke-virtual {v6, v10}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v9

    .line 4294967295
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "content":Landroid/widget/TextView;
    .end local v3    # "contentId":I
    .end local v4    # "headerImage":Landroid/widget/ImageView;
    .end local v5    # "icon":I
    .end local v6    # "stickyButton":Lcom/airbnb/android/views/StickyButton;
    .end local v7    # "title":Landroid/widget/TextView;
    .end local v8    # "titleId":I
    .end local v9    # "v":Landroid/view/View;
    :catch_8b
    move-exception v10

    const/4 v10, 0x0

    :try_start_8d
    const-string/jumbo v11, "HostHomeFuxDialogFragment#onCreateView"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_94} :catch_8b

    goto/16 :goto_9

    .line 79
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v4    # "headerImage":Landroid/widget/ImageView;
    .restart local v5    # "icon":I
    .restart local v9    # "v":Landroid/view/View;
    :cond_96
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_32

    .line 87
    .restart local v7    # "title":Landroid/widget/TextView;
    .restart local v8    # "titleId":I
    :cond_9c
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4e

    .line 95
    .restart local v2    # "content":Landroid/widget/TextView;
    .restart local v3    # "contentId":I
    :cond_a0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6a

    .line 101
    .restart local v1    # "buttonId":I
    .restart local v6    # "stickyButton":Lcom/airbnb/android/views/StickyButton;
    :cond_a4
    const v1, 0x7f0e0563

    goto :goto_7c
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 124
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->mPressedOK:Z

    if-nez v0, :cond_b

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/airbnb/android/analytics/FtueAnalytics;->trackHostInboxMoved(Z)V

    .line 127
    :cond_b
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
