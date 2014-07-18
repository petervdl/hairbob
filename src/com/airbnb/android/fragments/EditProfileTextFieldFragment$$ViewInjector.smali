.class public Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "EditProfileTextFieldFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0802b0

    const-string/jumbo v2, "field \'mTooltip\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mTooltip:Landroid/view/View;

    .line 12
    const v1, 0x7f0802ab

    const-string/jumbo v2, "field \'mTitleText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mTitleText:Landroid/widget/TextView;

    .line 14
    const v1, 0x7f0802ac

    const-string/jumbo v2, "field \'mEditableField\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    .line 16
    const v1, 0x7f0802af

    const-string/jumbo v2, "field \'mDescriptionText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mDescriptionText:Landroid/widget/TextView;

    .line 18
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mTooltip:Landroid/view/View;

    .line 22
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mTitleText:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mEditableField:Landroid/widget/EditText;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mDescriptionText:Landroid/widget/TextView;

    .line 25
    return-void
.end method
