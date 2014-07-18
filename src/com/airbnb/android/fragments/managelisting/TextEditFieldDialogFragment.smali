.class public Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "TextEditFieldDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;,
        Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
    }
.end annotation


# static fields
.field private static final ARG_EDITIBLE:Ljava/lang/String; = "editible"

.field private static final ARG_ORDINAL:Ljava/lang/String; = "ordinal"

.field public static final JSON_KEY_DETAILS:Ljava/lang/String; = "space"

.field public static final JSON_KEY_DIRECTIONS:Ljava/lang/String; = "directions"

.field public static final JSON_KEY_GUEST_ACCESS:Ljava/lang/String; = "access"

.field public static final JSON_KEY_GUEST_INTERACTION:Ljava/lang/String; = "interaction"

.field public static final JSON_KEY_HOUSE_MANUAL:Ljava/lang/String; = "house_manual"

.field public static final JSON_KEY_HOUSE_RULES:Ljava/lang/String; = "house_rules"

.field public static final JSON_KEY_NEIGHBORHOOD_OVERVIEW:Ljava/lang/String; = "neighborhood_overview"

.field public static final JSON_KEY_NOTES:Ljava/lang/String; = "notes"

.field public static final JSON_KEY_SUMMARY:Ljava/lang/String; = "summary"

.field public static final JSON_KEY_TITLE:Ljava/lang/String; = "name"

.field public static final JSON_KEY_TRANSIT:Ljava/lang/String; = "transit"


# instance fields
.field private mCharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

.field private mEditible:Ljava/lang/String;

.field private mEditibleField:Landroid/widget/EditText;

.field private mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field private mKeyboardOpen:Z

.field private mMax:I

.field private mTextRemaining:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToolTipImage:Landroid/widget/ImageView;

.field private mToolTipSeen:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    .line 114
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->None:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mCharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->showTooltip()V

    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mKeyboardOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->exit(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mCharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    .prologue
    .line 31
    iget v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mMax:I

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;II)Landroid/text/Spannable;
    .registers 4
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getSpannableString(II)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextRemaining:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    return-object v0
.end method

.method private exit(Z)V
    .registers 6
    .param p1, "save"    # Z

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 348
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mKeyboardOpen:Z

    if-eqz v0, :cond_1d

    .line 349
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$8;-><init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    :goto_1c
    return-void

    .line 362
    :cond_1d
    if-eqz p1, :cond_35

    .line 363
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->doneTextField(ILjava/lang/String;)V

    goto :goto_1c

    .line 365
    :cond_35
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_1c
.end method

.method private getSpannableString(II)Landroid/text/Spannable;
    .registers 8
    .param p1, "num"    # I
    .param p2, "pluralId"    # I

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p2, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "pluralString":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->makeBold(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;
    .registers 5
    .param p0, "ordinal"    # I
    .param p1, "editible"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;-><init>()V

    .line 128
    .local v1, "fragment":Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ordinal"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string/jumbo v2, "editible"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    return-object v1
.end method

.method private showTooltip()V
    .registers 5

    .prologue
    .line 341
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v1, v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mToolTipTitleId:I

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v2, v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mToolTipHelpId:I

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v3, v3, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mToolTipExamplesId:I

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->newInstance(III)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    move-result-object v0

    .line 342
    .local v0, "f":Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tooltip"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 343
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 309
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditible:Ljava/lang/String;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5f

    :cond_15
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditible:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 310
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v2, v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0520

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e06b5

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$7;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$7;-><init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0168

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$6;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$6;-><init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 335
    :goto_5e
    return v0

    :cond_5f
    const/4 v0, 0x0

    goto :goto_5e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "editible"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditible:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ordinal"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->getType(I)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 142
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "airbnb_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mToolTipSeen:Z

    .line 143
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 148
    const v5, 0x7f0300f2

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 150
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f0802ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 151
    .local v3, "title":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v5, v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mTitle:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 153
    const v5, 0x7f0800da

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mToolTipImage:Landroid/widget/ImageView;

    .line 154
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v5, v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mToolTipTitleId:I

    if-nez v5, :cond_ad

    .line 155
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mToolTipImage:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :goto_2f
    const v5, 0x7f0802ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    .line 168
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditible:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v7, v7, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mHint:I

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 171
    const v5, 0x7f0801bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextRemaining:Landroid/widget/TextView;

    .line 172
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v5, v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mMaxCharactersId:I

    if-eqz v5, :cond_b9

    .line 173
    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->CharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mCharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    .line 174
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v7, v7, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mMaxCharactersId:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mMax:I

    .line 175
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 176
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget v7, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mMax:I

    invoke-direct {v5, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v6

    .line 177
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 178
    iget v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mMax:I

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 179
    .local v1, "num":I
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextRemaining:Landroid/widget/TextView;

    const v6, 0x7f0d001b

    invoke-direct {p0, v1, v6}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getSpannableString(II)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .end local v0    # "FilterArray":[Landroid/text/InputFilter;
    :goto_9f
    move-object v2, v4

    .line 193
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$2;

    invoke-direct {v6, p0, v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 205
    return-object v4

    .line 157
    .end local v1    # "num":I
    .end local v2    # "rootView":Landroid/view/View;
    :cond_ad
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mToolTipImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2f

    .line 180
    :cond_b9
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v5, v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mMaxWordsId:I

    if-eqz v5, :cond_10a

    .line 181
    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->WordMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mCharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    .line 182
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v7, v7, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mMaxWordsId:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mMax:I

    .line 183
    iget v7, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mMax:I

    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f7

    move v5, v6

    :goto_e4
    sub-int v5, v7, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 186
    .restart local v1    # "num":I
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextRemaining:Landroid/widget/TextView;

    const v6, 0x7f0d001c

    invoke-direct {p0, v1, v6}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getSpannableString(II)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9f

    .line 183
    .end local v1    # "num":I
    :cond_f7
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "\\s+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    goto :goto_e4

    .line 188
    :cond_10a
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_129

    move v1, v6

    .line 189
    .restart local v1    # "num":I
    :goto_11b
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextRemaining:Landroid/widget/TextView;

    const v6, 0x7f0d001d

    invoke-direct {p0, v1, v6}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getSpannableString(II)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9f

    .line 188
    .end local v1    # "num":I
    :cond_129
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v1, v5

    goto :goto_11b
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onPause()V

    .line 304
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->unRegisterOnBackListener()V

    .line 305
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 286
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onResume()V

    .line 287
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 289
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$5;-><init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    return-void
.end method

.method public onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 212
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 213
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 214
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 215
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 217
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 219
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 257
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 259
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mToolTipSeen:Z

    if-nez v1, :cond_64

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iget v1, v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mToolTipTitleId:I

    if-eqz v1, :cond_64

    .line 260
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->showTooltip()V

    .line 261
    iput-boolean v4, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mToolTipSeen:Z

    .line 262
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "airbnb_prefs"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mField:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    :cond_64
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 273
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 275
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 276
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 279
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 281
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 282
    return-void
.end method
