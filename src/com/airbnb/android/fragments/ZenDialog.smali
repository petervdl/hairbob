.class public Lcom/airbnb/android/fragments/ZenDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ZenDialog.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    }
.end annotation


# static fields
.field private static final BODY_HTML_TEXT:Ljava/lang/String; = "text_html_body"

.field private static final BODY_TEXT:Ljava/lang/String; = "text_body"

.field private static final DUAL_BUTTON_NEGATIVE_REQUEST_CODE:Ljava/lang/String; = "req_code_dual_negative_button"

.field private static final DUAL_BUTTON_POSITIVE_REQUEST_CODE:Ljava/lang/String; = "req_code_dual_positive_button"

.field private static final DUAL_LEFT_BUTTON:Ljava/lang/String; = "dual_left_button"

.field private static final DUAL_RIGHT_BUTTON:Ljava/lang/String; = "dual_right_button"

.field private static final GRAY_CANCEL_BUTTON:Ljava/lang/String; = "gray_cancel_button"

.field private static final HAS_LAYOUT:Ljava/lang/String; = "has_layout"

.field private static final HAS_LISTVIEW:Ljava/lang/String; = "has_listview"

.field private static final HAS_SWIPE_DISMISS:Ljava/lang/String; = "has_swipe_dismiss"

.field private static final HEADER_SUBTITLE:Ljava/lang/String; = "header_subtitle"

.field private static final HEADER_TITLE:Ljava/lang/String; = "header_title"

.field private static final LISTVIEW_NO_DIVIDER:Ljava/lang/String; = "no_list_dividers"

.field private static final SINGLE_BLUE_BUTTON:Ljava/lang/String; = "single_blue_button"

.field private static final SINGLE_BUTTON_REQUEST_CODE:Ljava/lang/String; = "req_code_single_button"


# instance fields
.field private mLayoutFrame:Landroid/widget/FrameLayout;

.field private mNeedSwipeDismissListener:Z

.field private mSwipeDismissView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 313
    return-void
.end method

.method public static Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<",
            "Lcom/airbnb/android/fragments/ZenDialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    return-object v0
.end method

.method public static createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;
    .registers 6
    .param p0, "title"    # I
    .param p1, "body"    # I
    .param p2, "button"    # I

    .prologue
    .line 303
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    .line 304
    .local v0, "builder":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<Lcom/airbnb/android/fragments/ZenDialog;>;"
    if-lez p2, :cond_14

    .line 305
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    .line 307
    :cond_14
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    return-object v1
.end method

.method private setSwipeDismissTouchListener()V
    .registers 6

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ZenDialog;->mNeedSwipeDismissListener:Z

    if-eqz v1, :cond_28

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ZenDialog;->mNeedSwipeDismissListener:Z

    .line 230
    iget-object v1, p0, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    if-nez v1, :cond_14

    .line 231
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "I don\'t know what to attach the swipe-to-dismiss to!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    .line 235
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/airbnb/android/utils/SwipeDismissTouchListener;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/airbnb/android/fragments/ZenDialog$5;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/ZenDialog$5;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/airbnb/android/utils/SwipeDismissTouchListener;-><init>(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 248
    .end local v0    # "v":Landroid/view/View;
    :cond_28
    return-void
.end method


# virtual methods
.method protected clickLeftButton(I)V
    .registers 5
    .param p1, "requestCodeLeft"    # I

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ZenDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 289
    return-void
.end method

.method protected clickRightButton(I)V
    .registers 5
    .param p1, "requestCodeRight"    # I

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ZenDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    return-void
.end method

.method protected clickSingleButton(I)V
    .registers 5
    .param p1, "requestCodeSingle"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ZenDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 285
    return-void
.end method

.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getListAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "ZenDialog"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "ZenDialog#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_1b

    .line 55
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/ZenDialog;->setStyle(II)V

    .line 57
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    :try_start_1d
    const-string/jumbo v1, "ZenDialog#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_24} :catch_1b

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 37

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ZenDialog;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    move-object/from16 v30, v0

    const-string/jumbo v31, "ZenDialog#onCreateView"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_e} :catch_162

    .line 61
    :goto_e
    const v30, 0x7f0301e6

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, p2

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v28

    .line 62
    .local v28, "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ZenDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 65
    .local v4, "args":Landroid/os/Bundle;
    const-string/jumbo v30, "header_title"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 66
    .local v27, "title":Ljava/lang/String;
    const-string/jumbo v30, "header_subtitle"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 67
    .local v23, "subtitle":Ljava/lang/String;
    if-nez v27, :cond_39

    if-eqz v23, :cond_5a

    .line 68
    :cond_39
    const v30, 0x7f080521

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewStub;

    .line 69
    .local v16, "headerStub":Landroid/view/ViewStub;
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/airbnb/android/views/ZenDialogHeader;

    .line 70
    .local v15, "header":Lcom/airbnb/android/views/ZenDialogHeader;
    if-eqz v27, :cond_53

    .line 71
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/airbnb/android/views/ZenDialogHeader;->setTitle(Ljava/lang/String;)V

    .line 73
    :cond_53
    if-eqz v23, :cond_5a

    .line 74
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/airbnb/android/views/ZenDialogHeader;->setSubtitle(Ljava/lang/String;)V

    .line 79
    .end local v15    # "header":Lcom/airbnb/android/views/ZenDialogHeader;
    .end local v16    # "headerStub":Landroid/view/ViewStub;
    :cond_5a
    const-string/jumbo v30, "text_body"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "bodyText":Ljava/lang/String;
    if-eqz v9, :cond_92

    .line 81
    const v30, 0x7f080523

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/view/ViewStub;

    .line 82
    .local v26, "textStub":Landroid/view/ViewStub;
    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v30

    const v31, 0x7f080099

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 83
    .local v25, "text":Landroid/widget/TextView;
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    move-object/from16 v30, v0

    if-nez v30, :cond_16f

    .line 86
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    .line 93
    .end local v25    # "text":Landroid/widget/TextView;
    .end local v26    # "textStub":Landroid/view/ViewStub;
    :cond_92
    const-string/jumbo v30, "text_html_body"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 94
    .local v8, "bodyHtmlRes":I
    if-lez v8, :cond_d5

    .line 95
    const v30, 0x7f080523

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/view/ViewStub;

    .line 96
    .restart local v26    # "textStub":Landroid/view/ViewStub;
    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v30

    const v31, 0x7f080099

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 97
    .restart local v25    # "text":Landroid/widget/TextView;
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 98
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    move-object/from16 v30, v0

    if-nez v30, :cond_17b

    .line 101
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    .line 108
    .end local v25    # "text":Landroid/widget/TextView;
    .end local v26    # "textStub":Landroid/view/ViewStub;
    :cond_d5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ZenDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v30

    const-string/jumbo v31, "has_layout"

    invoke-virtual/range {v30 .. v31}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_143

    .line 109
    const v30, 0x7f080524

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewStub;

    .line 110
    .local v29, "viewStub":Landroid/view/ViewStub;
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/FrameLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/fragments/ZenDialog;->mLayoutFrame:Landroid/widget/FrameLayout;

    .line 114
    new-instance v24, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ZenDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v24, "tempText":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ZenDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    const v31, 0x7f0f002a

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 116
    const-string/jumbo v30, "Override onCreateView, call super.onCreateView(), then call setCustomView()"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ZenDialog;->mLayoutFrame:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    move-object/from16 v30, v0

    if-nez v30, :cond_187

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ZenDialog;->mLayoutFrame:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    .line 127
    .end local v24    # "tempText":Landroid/widget/TextView;
    .end local v29    # "viewStub":Landroid/view/ViewStub;
    :cond_143
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ZenDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v30

    const-string/jumbo v31, "has_listview"

    invoke-virtual/range {v30 .. v31}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1ef

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ZenDialog;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v30

    if-nez v30, :cond_193

    .line 129
    new-instance v30, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v31, "In order to have a listview, you need to override getListAdapter() and optionally override getItemClickListener()"

    invoke-direct/range {v30 .. v31}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw v30

    .line 4294967295
    .end local v4    # "args":Landroid/os/Bundle;
    .end local v8    # "bodyHtmlRes":I
    .end local v9    # "bodyText":Ljava/lang/String;
    .end local v23    # "subtitle":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    .end local v28    # "v":Landroid/view/View;
    :catch_162
    move-exception v30

    const/16 v30, 0x0

    :try_start_165
    const-string/jumbo v31, "ZenDialog#onCreateView"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16d} :catch_162

    goto/16 :goto_e

    .line 88
    .restart local v4    # "args":Landroid/os/Bundle;
    .restart local v9    # "bodyText":Ljava/lang/String;
    .restart local v23    # "subtitle":Ljava/lang/String;
    .restart local v25    # "text":Landroid/widget/TextView;
    .restart local v26    # "textStub":Landroid/view/ViewStub;
    .restart local v27    # "title":Ljava/lang/String;
    .restart local v28    # "v":Landroid/view/View;
    :cond_16f
    new-instance v30, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v31, "I\'m not sure what to attach the swipe dismiss listener to. Are you sure you want multiple body views?"

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw v30

    .line 103
    .restart local v8    # "bodyHtmlRes":I
    :cond_17b
    new-instance v30, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v31, "I\'m not sure what to attach the swipe dismiss listener to. Are you sure you want multiple body views?"

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw v30

    .line 122
    .end local v25    # "text":Landroid/widget/TextView;
    .end local v26    # "textStub":Landroid/view/ViewStub;
    .restart local v24    # "tempText":Landroid/widget/TextView;
    .restart local v29    # "viewStub":Landroid/view/ViewStub;
    :cond_187
    new-instance v30, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v31, "I\'m not sure what to attach the swipe dismiss listener to. Are you sure you want multiple body views?"

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw v30

    .line 133
    .end local v24    # "tempText":Landroid/widget/TextView;
    .end local v29    # "viewStub":Landroid/view/ViewStub;
    :cond_193
    const v30, 0x7f080526

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewStub;

    .line 134
    .local v19, "listStub":Landroid/view/ViewStub;
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ListView;

    .line 135
    .local v20, "listview":Landroid/widget/ListView;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ZenDialog;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ZenDialog;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ZenDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v30

    const-string/jumbo v31, "no_list_dividers"

    invoke-virtual/range {v30 .. v31}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1ef

    .line 140
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 141
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 142
    new-instance v30, Landroid/graphics/drawable/ColorDrawable;

    const/16 v31, 0x0

    invoke-direct/range {v30 .. v31}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 147
    .end local v19    # "listStub":Landroid/view/ViewStub;
    .end local v20    # "listview":Landroid/widget/ListView;
    :cond_1ef
    const-string/jumbo v30, "single_blue_button"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "blueButtonText":Ljava/lang/String;
    if-eqz v7, :cond_21e

    .line 149
    const v30, 0x7f080528

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 150
    .local v6, "blueButtonStub":Landroid/view/ViewStub;
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 151
    .local v5, "blueButton":Landroid/widget/Button;
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v30, Lcom/airbnb/android/fragments/ZenDialog$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$1;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .end local v5    # "blueButton":Landroid/widget/Button;
    .end local v6    # "blueButtonStub":Landroid/view/ViewStub;
    :cond_21e
    const-string/jumbo v30, "dual_left_button"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 167
    .local v18, "leftButtonText":Ljava/lang/String;
    const-string/jumbo v30, "dual_right_button"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 168
    .local v22, "rightButtonText":Ljava/lang/String;
    if-eqz v18, :cond_281

    if-eqz v22, :cond_281

    .line 169
    const v30, 0x7f08052a

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewStub;

    .line 170
    .local v12, "dualButtonStub":Landroid/view/ViewStub;
    invoke-virtual {v12}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v13

    .line 172
    .local v13, "dualButtons":Landroid/view/View;
    const v30, 0x7f0800fd

    move/from16 v0, v30

    invoke-static {v13, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 173
    .local v17, "leftButton":Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v30, Lcom/airbnb/android/fragments/ZenDialog$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$2;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v30, 0x7f0800fe

    move/from16 v0, v30

    invoke-static {v13, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 187
    .local v21, "rightButton":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    new-instance v30, Lcom/airbnb/android/fragments/ZenDialog$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$3;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .end local v12    # "dualButtonStub":Landroid/view/ViewStub;
    .end local v13    # "dualButtons":Landroid/view/View;
    .end local v17    # "leftButton":Landroid/widget/TextView;
    .end local v21    # "rightButton":Landroid/widget/TextView;
    :cond_281
    const-string/jumbo v30, "gray_cancel_button"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 203
    .local v14, "hasCancelButton":Z
    if-eqz v14, :cond_2af

    .line 204
    const v30, 0x7f08052c

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewStub;

    .line 205
    .local v11, "cancelButtonStub":Landroid/view/ViewStub;
    invoke-virtual {v11}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v10

    .line 206
    .local v10, "cancelButton":Landroid/view/View;
    new-instance v30, Lcom/airbnb/android/fragments/ZenDialog$4;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$4;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .end local v10    # "cancelButton":Landroid/view/View;
    .end local v11    # "cancelButtonStub":Landroid/view/ViewStub;
    :cond_2af
    const-string/jumbo v30, "has_swipe_dismiss"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/airbnb/android/fragments/ZenDialog;->mNeedSwipeDismissListener:Z

    .line 217
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v28
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 223
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;->setSwipeDismissTouchListener()V

    .line 224
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

.method protected setCustomView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog;->mLayoutFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_d

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did you call ZenBuilder.withCustomLayout(), and call super.onCreateView() first?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_d
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    move-object v0, p1

    .line 274
    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog;->mSwipeDismissView:Landroid/view/View;

    .line 277
    :cond_25
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog;->mLayoutFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 278
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog;->mLayoutFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 279
    return-void
.end method
