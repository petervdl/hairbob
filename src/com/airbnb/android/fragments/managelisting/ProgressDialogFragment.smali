.class public Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;
    }
.end annotation


# static fields
.field private static final ARG_DUAL_BUTTON_QUESTION:Ljava/lang/String; = "dual_button_question"

.field private static final ARG_FINISHED_COMPLETE_IMAGE:Ljava/lang/String; = "finished_image"

.field private static final ARG_FINISHED_DELAY:Ljava/lang/String; = "finished_delay"

.field private static final ARG_FINISHED_SUBTITLE:Ljava/lang/String; = "finished_subtitle"

.field private static final ARG_FINISHED_TITLE:Ljava/lang/String; = "finished_title"

.field private static final ARG_IN_FINISHED_STATE:Ljava/lang/String; = "in_finished_state"

.field private static final ARG_SEND_PROGRESS_COMPLETE:Ljava/lang/String; = "progress_complete"

.field private static final ARG_SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_CLICK_DISMISS:Ljava/lang/String; = "click_cancel"

.field public static final EXTRA_CLICK_NEGATIVE_BUTTON:Ljava/lang/String; = "click_negative_button"

.field public static final EXTRA_CLICK_POSITIVE_BUTTON:Ljava/lang/String; = "click_positive_button"

.field public static final EXTRA_ON_PROGRESS_COMPLETE:Ljava/lang/String; = "on_progress_complete"

.field public static final NO_AUTO_FINISHED_DELAY:I = -0x1

.field public static final REQUEST_CODE_PROGRESS_DIALOG:I = 0x191


# instance fields
.field private mCompleteImage:Landroid/widget/ImageView;

.field private mDescription:Landroid/widget/TextView;

.field private mDialogListener:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;

.field mDualButtonsContainer:Landroid/widget/LinearLayout;

.field private mFinishedCompleteImage:I

.field private mFinishedDelayMillis:I

.field private mFinishedSubtitle:Ljava/lang/String;

.field private mFinishedTitle:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInFinishedState:Z

.field mNegativeButton:Landroid/widget/TextView;

.field mPositiveButton:Landroid/widget/TextView;

.field mProgressDialogContainer:Landroid/widget/LinearLayout;

.field mQuestion:Landroid/widget/TextView;

.field private mSendProgressCompleteOnResume:Z

.field private mSmooth:Lcom/airbnb/android/views/PropertySpinnerLoader;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->sendOnProgressComplete()V

    return-void
.end method

.method public static newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .registers 6
    .param p0, "titleRes"    # I
    .param p1, "subtitleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "c":Landroid/content/Context;
    if-lez p0, :cond_1a

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "title":Ljava/lang/String;
    :goto_f
    if-lez p1, :cond_15

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "subtitle":Ljava/lang/String;
    :cond_15
    invoke-static {v2, v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v3

    return-object v3

    .end local v1    # "subtitle":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1a
    move-object v2, v1

    .line 77
    goto :goto_f
.end method

.method public static newInstance(III)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .registers 7
    .param p0, "titleRes"    # I
    .param p1, "subtitleRes"    # I
    .param p2, "dualButtonQuestionRes"    # I

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    .line 97
    .local v0, "dialogFrag":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    if-lez p2, :cond_1c

    .line 98
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "dual_button_question"

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1c
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .registers 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;-><init>()V

    .line 84
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v2, "subtitle"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v1
.end method

.method private sendOnProgressComplete()V
    .registers 5

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 238
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDialogListener:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;

    if-eqz v1, :cond_c

    .line 239
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDialogListener:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;

    invoke-interface {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;->onProgressCompleted()V

    .line 242
    :cond_c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "on_progress_complete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x191

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 247
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_28
    return-void
.end method

.method private setupDualButtonsIfNeeded()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "dual_button_question"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "questionText":Ljava/lang/String;
    :goto_12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 163
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mQuestion:Landroid/widget/TextView;

    invoke-static {v2, v2}, Lcom/airbnb/android/utils/MiscUtils;->makeBold(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mQuestion:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 167
    .local v1, "padding":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mProgressDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 168
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDualButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mPositiveButton:Landroid/widget/TextView;

    const v4, 0x7f0e085b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mNegativeButton:Landroid/widget/TextView;

    const v4, 0x7f0e00b0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 173
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    .line 188
    .local v0, "onClick":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .end local v0    # "onClick":Landroid/view/View$OnClickListener;
    .end local v1    # "padding":I
    :cond_5b
    return-void

    .line 159
    .end local v2    # "questionText":Ljava/lang/String;
    :cond_5c
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private showCompleteImage(I)V
    .registers 4
    .param p1, "completeImage"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mSmooth:Lcom/airbnb/android/views/PropertySpinnerLoader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PropertySpinnerLoader;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mCompleteImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mCompleteImage:Landroid/widget/ImageView;

    const v1, 0x7f0a001f

    invoke-static {p1, v1}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void
.end method

.method private showCompleteState()V
    .registers 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedSubtitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 200
    iget v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedCompleteImage:I

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->showCompleteImage(I)V

    .line 201
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setupDualButtonsIfNeeded()V

    .line 203
    iget v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedDelayMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mHandler:Landroid/os/Handler;

    .line 205
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    iget v2, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedDelayMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :goto_2f
    return-void

    .line 212
    :cond_30
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->sendOnProgressComplete()V

    goto :goto_2f
.end method

.method private static updateText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 261
    if-eqz p0, :cond_d

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :cond_d
    :goto_d
    return-void

    .line 265
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 287
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 289
    :cond_d
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 308
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 310
    :cond_9
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 295
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDialogListener:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;

    if-eqz v1, :cond_c

    .line 296
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDialogListener:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;

    invoke-interface {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;->onProgressCancelled()V

    .line 298
    :cond_c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "click_cancel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x191

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 303
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_28
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 105
    const/4 v1, 0x1

    const v2, 0x7f0f0053

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setStyle(II)V

    .line 106
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301a8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 109
    const v1, 0x7f08044b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/PropertySpinnerLoader;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mSmooth:Lcom/airbnb/android/views/PropertySpinnerLoader;

    .line 110
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mSmooth:Lcom/airbnb/android/views/PropertySpinnerLoader;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PropertySpinnerLoader;->startAnimation()V

    .line 112
    const v1, 0x7f0800b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mTitle:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0802d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDescription:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0802d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mCompleteImage:Landroid/widget/ImageView;

    .line 117
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "subtitle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_ac

    .line 121
    const-string/jumbo v1, "in_finished_state"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mInFinishedState:Z

    .line 122
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mInFinishedState:Z

    if-eqz v1, :cond_a3

    .line 123
    const-string/jumbo v1, "finished_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedTitle:Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "finished_subtitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedSubtitle:Ljava/lang/String;

    .line 125
    const-string/jumbo v1, "finished_image"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedCompleteImage:I

    .line 126
    const-string/jumbo v1, "finished_delay"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedDelayMillis:I

    .line 127
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->showCompleteState()V

    .line 130
    :cond_a3
    const-string/jumbo v1, "progress_complete"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mSendProgressCompleteOnResume:Z

    .line 133
    :cond_ac
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 218
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 221
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mSendProgressCompleteOnResume:Z

    .line 224
    :cond_10
    return-void
.end method

.method public onProgressComplete(IIII)V
    .registers 7
    .param p1, "titleRes"    # I
    .param p2, "subtitleRes"    # I
    .param p3, "completeImage"    # I
    .param p4, "delayMillis"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_e

    invoke-virtual {p0, p2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v1, v0, p3, p4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V

    .line 195
    return-void

    .line 194
    :cond_e
    const-string/jumbo v0, ""

    goto :goto_a
.end method

.method public onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p3, "completeImage"    # I
    .param p4, "delayMillis"    # I

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mInFinishedState:Z

    .line 150
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedTitle:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedSubtitle:Ljava/lang/String;

    .line 152
    iput p3, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedCompleteImage:I

    .line 153
    iput p4, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedDelayMillis:I

    .line 155
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->showCompleteState()V

    .line 156
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 230
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mSendProgressCompleteOnResume:Z

    if-eqz v0, :cond_d

    .line 231
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->sendOnProgressComplete()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mSendProgressCompleteOnResume:Z

    .line 234
    :cond_d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    const-string/jumbo v0, "in_finished_state"

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mInFinishedState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mInFinishedState:Z

    if-eqz v0, :cond_2f

    .line 276
    const-string/jumbo v0, "finished_title"

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "finished_subtitle"

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "finished_image"

    iget v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedCompleteImage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    const-string/jumbo v0, "finished_delay"

    iget v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mFinishedDelayMillis:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    :cond_2f
    const-string/jumbo v0, "progress_complete"

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mSendProgressCompleteOnResume:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
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

.method public setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDialogListener:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;

    .line 140
    return-void
.end method

.method public updateDescription(Ljava/lang/String;)V
    .registers 4
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDescription:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x8

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void

    .line 256
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method
