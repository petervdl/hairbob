.class public Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ProgressDialogFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08044a

    const-string/jumbo v2, "field \'mProgressDialogContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mProgressDialogContainer:Landroid/widget/LinearLayout;

    .line 12
    const v1, 0x7f08044c

    const-string/jumbo v2, "field \'mDualButtonsContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDualButtonsContainer:Landroid/widget/LinearLayout;

    .line 14
    const v1, 0x7f0800fc

    invoke-virtual {p0, p2, v1}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mQuestion:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f0800fe

    invoke-virtual {p0, p2, v1}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mPositiveButton:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f0800fd

    invoke-virtual {p0, p2, v1}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mNegativeButton:Landroid/widget/TextView;

    .line 20
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mProgressDialogContainer:Landroid/widget/LinearLayout;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mDualButtonsContainer:Landroid/widget/LinearLayout;

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mQuestion:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mPositiveButton:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->mNegativeButton:Landroid/widget/TextView;

    .line 28
    return-void
.end method
