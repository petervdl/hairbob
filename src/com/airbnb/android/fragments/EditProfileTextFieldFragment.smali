.class public Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;
.super Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;
.source "EditProfileTextFieldFragment.java"


# static fields
.field private static final ARG_OLD_VALUE:Ljava/lang/String; = "old_value"

.field private static final ARG_SECTION:Ljava/lang/String; = "profile_section"

.field private static final CONFIRM_SAVE_DIALOG:Ljava/lang/String; = "confirm_save_dialog"

.field private static final DISMISS_DELAY:I = 0x12c

.field private static final REQUEST_CODE_CONFIRM_CANCEL:I = 0xbba

.field private static final REQUEST_CODE_CONFIRM_SAVE:I = 0xbb9

.field private static final TOGGLE_KEYBOARD_DELAY:I = 0x1f4


# instance fields
.field mDescriptionText:Landroid/widget/TextView;

.field mEditableField:Landroid/widget/EditText;

.field private mKeyboardUp:Z

.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOldValue:Ljava/lang/String;

.field protected mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field mTitleText:Landroid/widget/TextView;

.field mTooltip:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mKeyboardUp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->saveValueOrGoBack(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->exit(Z)V

    return-void
.end method

.method private exit(Z)V
    .registers 6
    .param p1, "save"    # Z

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 174
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mKeyboardUp:Z

    if-eqz v0, :cond_1d

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$3;-><init>(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :goto_1c
    return-void

    .line 184
    :cond_1d
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->saveValueOrGoBack(Z)V

    goto :goto_1c
.end method

.method protected static getBundle(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p0, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .param p1, "oldValue"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "profile_section"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string/jumbo v1, "old_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;
    .registers 4
    .param p0, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .param p1, "oldValue"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v1, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;-><init>()V

    .line 56
    .local v1, "fragment":Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;
    invoke-static {p0, p1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getBundle(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method

.method private saveValueOrGoBack(Z)V
    .registers 5
    .param p1, "save"    # Z

    .prologue
    .line 189
    if-eqz p1, :cond_6

    .line 190
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->onSave()V

    .line 195
    :goto_5
    return-void

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v1, "back"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackTextSectionAction(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 193
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_5
.end method

.method private setActionBarEditModeEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 205
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz p1, :cond_2b

    .line 206
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 207
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 208
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 209
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 210
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 212
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$4;-><init>(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :goto_2a
    return-void

    .line 228
    :cond_2b
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 229
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 230
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 231
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_2a
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_12

    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 247
    :goto_6
    return-void

    .line 239
    :pswitch_7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->exit(Z)V

    goto :goto_6

    .line 242
    :pswitch_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->exit(Z)V

    goto :goto_6

    .line 237
    nop

    :pswitch_data_12
    .packed-switch 0xbb9
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 7

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->valueModified()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 148
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0520

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0168

    const/16 v2, 0xbba

    const v3, 0x7f0e06b5

    const/16 v4, 0xbb9

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirm_save_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "old_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mOldValue:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "profile_section"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 78
    const v2, 0x7f0300f2

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 81
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mTooltip:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v3}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mOldValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v2}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->hasHint()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 85
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v3}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->getHintId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 87
    :cond_37
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    sget-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Email:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    if-ne v2, v3, :cond_44

    .line 88
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 90
    :cond_44
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v2}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->hasDescription()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 91
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mDescriptionText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v3}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->getDescriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_5c
    move-object v0, v1

    .line 96
    .local v0, "rootView":Landroid/view/View;
    new-instance v2, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$1;-><init>(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Landroid/view/View;)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 105
    return-object v1
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 166
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;->onDestroyView()V

    .line 167
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->apiRemoveGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 168
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;->onPause()V

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/EditProfileInterface;->unregisterOnBackListener()V

    .line 143
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 124
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$2;-><init>(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method

.method protected onSave()V
    .registers 7

    .prologue
    .line 198
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "newValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v2, "update"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "word_count"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackTextSectionAction(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 200
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;

    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-interface {v1, v2, v0}, Lcom/airbnb/android/interfaces/EditProfileInterface;->doneEdit(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;->onStart()V

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->setActionBarEditModeEnabled(Z)V

    .line 113
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;->onStop()V

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->setActionBarEditModeEnabled(Z)V

    .line 120
    return-void
.end method

.method protected valueModified()Z
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mOldValue:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mOldValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method
