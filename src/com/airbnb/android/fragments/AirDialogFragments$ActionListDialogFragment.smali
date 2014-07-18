.class public Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
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
    name = "ActionListDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;,
        Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;
    }
.end annotation


# static fields
.field protected static final ACTION_ITEMS:Ljava/lang/String; = "action_items"

.field protected static final DIALOG_SUBTITLE:Ljava/lang/String; = "dialog_subtitle"

.field protected static final DIALOG_SUBTITLE_RES:Ljava/lang/String; = "dialog_subtitle_res"

.field protected static final DIALOG_TITLE:Ljava/lang/String; = "dialog_title"

.field protected static final DIALOG_TITLE_RES:Ljava/lang/String; = "dialog_title_res"


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mListener:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 405
    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->mCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static newInstance(IILjava/util/ArrayList;)Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    .registers 6
    .param p0, "titleRes"    # I
    .param p1, "subtitleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;)",
            "Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/ActionItem;>;"
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;-><init>()V

    .line 296
    .local v1, "f":Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 297
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "dialog_title_res"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string/jumbo v2, "dialog_subtitle_res"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-string/jumbo v2, "action_items"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 300
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 301
    return-object v1
.end method

.method public static newInstance(ILjava/util/ArrayList;)Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    .registers 5
    .param p0, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;)",
            "Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/ActionItem;>;"
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;-><init>()V

    .line 287
    .local v1, "f":Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "dialog_title_res"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string/jumbo v2, "action_items"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 290
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 291
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    .registers 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "subtitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;)",
            "Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/ActionItem;>;"
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;-><init>()V

    .line 306
    .local v1, "f":Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "dialog_title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v2, "dialog_subtitle"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v2, "action_items"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 310
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 311
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "AirDialogFragments$ActionListDialogFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "AirDialogFragments$ActionListDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_1b

    .line 316
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 317
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->setStyle(II)V

    .line 318
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    :try_start_1d
    const-string/jumbo v1, "AirDialogFragments$ActionListDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_24} :catch_1b

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    .prologue
    :try_start_0
    iget-object v7, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v8, "AirDialogFragments$ActionListDialogFragment#onCreateView"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_9d

    .line 322
    :goto_9
    const v7, 0x7f030001

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 324
    .local v6, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "dialog_title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, "title":Ljava/lang/String;
    if-nez v5, :cond_2d

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "dialog_title_res"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 326
    :cond_2d
    const v7, 0x7f08001f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "dialog_subtitle"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "subtitle":Ljava/lang/String;
    if-nez v2, :cond_62

    .line 330
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "dialog_subtitle_res"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 331
    .local v3, "subtitleRes":I
    if-eqz v3, :cond_62

    .line 332
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "dialog_subtitle_res"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    .end local v3    # "subtitleRes":I
    :cond_62
    const v7, 0x7f080020

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 336
    .local v4, "subtitleTextView":Landroid/widget/TextView;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a8

    .line 337
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_74
    const v7, 0x7f080021

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 343
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->setActionItemListAdapter(Landroid/widget/ListView;)V

    .line 344
    new-instance v7, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 365
    const v7, 0x7f080022

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 366
    .local v0, "cancelButton":Landroid/widget/TextView;
    new-instance v7, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v6

    .line 4294967295
    .end local v0    # "cancelButton":Landroid/widget/TextView;
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "subtitle":Ljava/lang/String;
    .end local v4    # "subtitleTextView":Landroid/widget/TextView;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "v":Landroid/view/View;
    :catch_9d
    move-exception v7

    const/4 v7, 0x0

    :try_start_9f
    const-string/jumbo v8, "AirDialogFragments$ActionListDialogFragment#onCreateView"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a6} :catch_9d

    goto/16 :goto_9

    .line 339
    .restart local v2    # "subtitle":Ljava/lang/String;
    .restart local v4    # "subtitleTextView":Landroid/widget/TextView;
    .restart local v5    # "title":Ljava/lang/String;
    .restart local v6    # "v":Landroid/view/View;
    :cond_a8
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_74
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

.method public setActionItemListAdapter(Landroid/widget/ListView;)V
    .registers 6
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "action_items"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 386
    .local v0, "actionItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/ActionItem;>;"
    new-instance v1, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f03012d

    invoke-direct {v1, v2, v3, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    return-void
.end method

.method public setActionItemListener(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;

    .line 391
    return-void
.end method

.method public setCancelClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "cancelListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 395
    return-void
.end method
