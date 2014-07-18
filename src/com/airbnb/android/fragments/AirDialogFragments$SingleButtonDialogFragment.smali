.class public Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AirDialogFragments.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/AirDialogFragments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleButtonDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ARG_BOLD_TEXT:Ljava/lang/String; = "info_bold"

.field private static final ARG_BUTTON_TEXT_RES:Ljava/lang/String; = "button_res"

.field private static final ARG_ENABLE_LINKS:Ljava/lang/String; = "info_links"

.field private static final ARG_INFO_RES:Ljava/lang/String; = "info_res"

.field private static final ARG_INFO_STRING:Ljava/lang/String; = "info_string"

.field private static final ARG_TITLE_RES:Ljava/lang/String; = "title_res"


# instance fields
.field private mListener:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;

    return-object v0
.end method

.method public static newInstance(IIIZ)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    .registers 5
    .param p0, "titleRes"    # I
    .param p1, "infoRes"    # I
    .param p2, "buttonTextRes"    # I
    .param p3, "enableLinks"    # Z

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->newInstanceImpl(IILjava/lang/String;IZ)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;I)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    .registers 5
    .param p0, "titleRes"    # I
    .param p1, "infoText"    # Ljava/lang/String;
    .param p2, "buttonTextRes"    # I

    .prologue
    .line 74
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->newInstanceImpl(IILjava/lang/String;IZ)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method private static newInstanceImpl(IILjava/lang/String;IZ)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    .registers 8
    .param p0, "titleRes"    # I
    .param p1, "infoRes"    # I
    .param p2, "infoText"    # Ljava/lang/String;
    .param p3, "buttonTextRes"    # I
    .param p4, "enableLinks"    # Z

    .prologue
    .line 82
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;-><init>()V

    .line 83
    .local v1, "f":Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title_res"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const/4 v2, -0x1

    if-eq p1, v2, :cond_29

    .line 86
    const-string/jumbo v2, "info_res"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    :goto_19
    const-string/jumbo v2, "button_res"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string/jumbo v2, "info_links"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v1

    .line 88
    :cond_29
    const-string/jumbo v2, "info_string"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public static newInstanceWithBold(ILjava/lang/String;Ljava/lang/String;I)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    .registers 7
    .param p0, "titleRes"    # I
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "boldSubstring"    # Ljava/lang/String;
    .param p3, "buttonTextRes"    # I

    .prologue
    .line 102
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;-><init>()V

    .line 103
    .local v1, "f":Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title_res"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string/jumbo v2, "info_string"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v2, "info_bold"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v2, "button_res"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v1
.end method

.method private setInfoWithArgs(Landroid/os/Bundle;Landroid/widget/TextView;)V
    .registers 8
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "infoView"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, -0x1

    .line 156
    const-string/jumbo v3, "info_res"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 157
    .local v1, "infoRes":I
    if-eq v1, v4, :cond_e

    .line 158
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    :goto_d
    return-void

    .line 160
    :cond_e
    const-string/jumbo v3, "info_string"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "infoText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 162
    const-string/jumbo v3, "info_bold"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "boldSubstring":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 164
    invoke-static {v2, v0}, Lcom/airbnb/android/utils/MiscUtils;->makeBold(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 166
    :cond_30
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 169
    .end local v0    # "boldSubstring":Ljava/lang/String;
    :cond_34
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "AirDialogFragments$SingleButtonDialogFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "AirDialogFragments$SingleButtonDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_1b

    .line 115
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->setStyle(II)V

    .line 117
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    :try_start_1d
    const-string/jumbo v1, "AirDialogFragments$SingleButtonDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_24} :catch_1b

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v8, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v6, "AirDialogFragments$SingleButtonDialogFragment#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_63

    .line 121
    :goto_a
    const v5, 0x7f0301d1

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 123
    .local v4, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, "args":Landroid/os/Bundle;
    const v5, 0x7f08001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 126
    .local v3, "titleView":Landroid/widget/TextView;
    const-string/jumbo v5, "title_res"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 128
    const v5, 0x7f0800a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 129
    .local v2, "infoView":Landroid/widget/TextView;
    invoke-direct {p0, v0, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->setInfoWithArgs(Landroid/os/Bundle;Landroid/widget/TextView;)V

    .line 130
    const-string/jumbo v5, "info_links"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 131
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 134
    :cond_44
    const v5, 0x7f080191

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 135
    .local v1, "button":Landroid/widget/Button;
    const-string/jumbo v5, "button_res"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 137
    new-instance v5, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v4

    .line 4294967295
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "button":Landroid/widget/Button;
    .end local v2    # "infoView":Landroid/widget/TextView;
    .end local v3    # "titleView":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/view/View;
    :catch_63
    move-exception v5

    const/4 v5, 0x0

    :try_start_65
    const-string/jumbo v6, "AirDialogFragments$SingleButtonDialogFragment#onCreateView"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6c} :catch_63

    goto :goto_a
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

.method public setSingleButtonDialogListener(Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;

    .line 176
    return-void
.end method
