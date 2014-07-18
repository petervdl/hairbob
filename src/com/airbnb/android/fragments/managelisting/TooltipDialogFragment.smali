.class public Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TooltipDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_EXAMPLES:Ljava/lang/String; = "examplesId"

.field private static final ARG_EXAMPLE_HEADER:Ljava/lang/String; = "exampleHeader"

.field private static final ARG_HELP:Ljava/lang/String; = "helpId"

.field private static final ARG_TITLE:Ljava/lang/String; = "titleId"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    .registers 5
    .param p0, "titleId"    # I
    .param p1, "helpId"    # I

    .prologue
    .line 27
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;-><init>()V

    .line 28
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "titleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    const-string/jumbo v2, "helpId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method

.method public static newInstance(III)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    .registers 6
    .param p0, "titleId"    # I
    .param p1, "helpId"    # I
    .param p2, "examplesArrayId"    # I

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    move-result-object v1

    .line 38
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "examplesId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v1
.end method

.method public static newInstance(IIII)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    .registers 7
    .param p0, "titleId"    # I
    .param p1, "helpId"    # I
    .param p2, "exampleHeaderId"    # I
    .param p3, "examplesArrayId"    # I

    .prologue
    .line 46
    invoke-static {p0, p1, p3}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->newInstance(III)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    move-result-object v1

    .line 47
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "exampleHeader"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f03004e

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 58
    .local v14, "view":Landroid/view/View;
    const v15, 0x7f0800d9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 59
    .local v13, "title":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "titleId"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "helpId"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 62
    .local v9, "helpId":I
    const v15, 0x7f0800db

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 63
    .local v8, "help":Landroid/widget/TextView;
    if-eqz v9, :cond_a7

    .line 64
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 69
    :goto_47
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "examplesId"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 70
    .local v6, "examplesArrayId":I
    const v15, 0x7f0800dc

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, "exampleHeader":Landroid/widget/TextView;
    const v15, 0x7f0800dd

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 72
    .local v5, "examples":Landroid/widget/TextView;
    if-nez v6, :cond_ad

    .line 73
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_70
    const v15, 0x7f0800be

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 102
    .local v2, "dismissButton":Landroid/widget/Button;
    const v15, 0x7f0e0563

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 109
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v15, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v1}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v1

    .line 66
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "dismissButton":Landroid/widget/Button;
    .end local v3    # "exampleHeader":Landroid/widget/TextView;
    .end local v5    # "examples":Landroid/widget/TextView;
    .end local v6    # "examplesArrayId":I
    :cond_a7
    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47

    .line 77
    .restart local v3    # "exampleHeader":Landroid/widget/TextView;
    .restart local v5    # "examples":Landroid/widget/TextView;
    .restart local v6    # "examplesArrayId":I
    :cond_ad
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "examplesStrings":[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v12, "sb":Ljava/lang/StringBuilder;
    array-length v11, v7

    .line 81
    .local v11, "length":I
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "exampleHeader"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 82
    .local v4, "exampleHeaderId":I
    if-eqz v4, :cond_e6

    .line 83
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 88
    :goto_cd
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_ce
    if-ge v10, v11, :cond_ff

    .line 89
    const/4 v15, 0x1

    if-le v11, v15, :cond_d9

    .line 90
    const-string/jumbo v15, "\u2022 "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_d9
    aget-object v15, v7, v10

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v10, v10, 0x1

    goto :goto_ce

    .line 85
    .end local v10    # "i":I
    :cond_e6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0008

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_cd

    .line 97
    .restart local v10    # "i":I
    :cond_ff
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_70
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
