.class public Lcom/airbnb/android/fragments/DeleteListingDialog;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "DeleteListingDialog.java"


# instance fields
.field private mConfirmDeleteCheck:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method public static newInstance(ILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/DeleteListingDialog;
    .registers 8
    .param p0, "requestCodeToConfirmDelete"    # I
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 20
    new-instance v0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v1, Lcom/airbnb/android/fragments/DeleteListingDialog;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/DeleteListingDialog;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v1, 0x7f0e04c3

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/4 v2, 0x0

    const v3, 0x7f0e0150

    move v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/DeleteListingDialog;

    return-object v0
.end method


# virtual methods
.method protected clickRightButton(I)V
    .registers 5
    .param p1, "requestCodeRight"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/fragments/DeleteListingDialog;->mConfirmDeleteCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/ZenDialog;->clickRightButton(I)V

    .line 34
    :goto_b
    return-void

    .line 32
    :cond_c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DeleteListingDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e04c6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f030038

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "frame":Landroid/view/View;
    const v2, 0x7f08009a

    invoke-static {v0, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/airbnb/android/fragments/DeleteListingDialog;->mConfirmDeleteCheck:Landroid/widget/CheckBox;

    .line 43
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/DeleteListingDialog;->setCustomView(Landroid/view/View;)V

    .line 45
    return-object v1
.end method
