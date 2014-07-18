.class public Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;
.super Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;
.source "EditProfileDualTextFieldsFragment.java"


# static fields
.field private static final ARG_OLD_VALUE_TWO:Ljava/lang/String; = "second_old_value"


# instance fields
.field mEditableFieldTwo:Landroid/widget/EditText;

.field private mOldValueTwo:Ljava/lang/String;

.field mTitleTextTwo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;
    .registers 6
    .param p0, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .param p1, "oldValueOne"    # Ljava/lang/String;
    .param p2, "mOldValueTwo"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v1, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;-><init>()V

    .line 30
    .local v1, "fragment":Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;
    invoke-static {p0, p1}, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->getBundle(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 31
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "second_old_value"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "second_old_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mOldValueTwo:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 47
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mTitleText:Landroid/widget/TextView;

    const v2, 0x7f0e0184

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mTitleTextTwo:Landroid/widget/TextView;

    const v2, 0x7f0e018d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mTitleTextTwo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mEditableFieldTwo:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mEditableFieldTwo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mOldValueTwo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-object v0
.end method

.method protected onSave()V
    .registers 8

    .prologue
    .line 66
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mEditableField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "firstName":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mEditableFieldTwo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "lastName":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v3, "update"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "first_name_word_count"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "last_name_word_count"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackTextSectionAction(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 70
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;

    invoke-interface {v2, v0, v1}, Lcom/airbnb/android/interfaces/EditProfileInterface;->doneEditName(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected valueModified()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-super {p0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->valueModified()Z

    move-result v0

    .line 59
    .local v0, "firstNameModified":Z
    iget-object v4, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mOldValueTwo:Ljava/lang/String;

    if-nez v4, :cond_1a

    iget-object v4, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mEditableFieldTwo:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_33

    :cond_1a
    iget-object v4, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mOldValueTwo:Ljava/lang/String;

    iget-object v5, p0, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->mEditableFieldTwo:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    move v1, v3

    .line 61
    .local v1, "lastNameModified":Z
    :goto_2d
    if-nez v0, :cond_31

    if-eqz v1, :cond_32

    :cond_31
    move v2, v3

    :cond_32
    return v2

    .end local v1    # "lastNameModified":Z
    :cond_33
    move v1, v2

    .line 59
    goto :goto_2d
.end method
