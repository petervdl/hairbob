.class public Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ProfilePhoneNumbersFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08025a

    const-string/jumbo v2, "field \'mListViewVerifiedNumbers\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mListViewVerifiedNumbers:Lcom/airbnb/android/views/LinearListView;

    .line 12
    const v1, 0x7f08025d

    const-string/jumbo v2, "field \'mListViewUnverifiedNumbers\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mListViewUnverifiedNumbers:Lcom/airbnb/android/views/LinearListView;

    .line 14
    const v1, 0x7f08025e

    const-string/jumbo v2, "field \'mBtnAddNumber\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mBtnAddNumber:Lcom/airbnb/android/views/StickyButton;

    .line 16
    const v1, 0x7f080258

    const-string/jumbo v2, "field \'mHeaderVerified\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mHeaderVerified:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f08025b

    const-string/jumbo v2, "field \'mHeaderUnverified\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mHeaderUnverified:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f080259

    const-string/jumbo v2, "field \'mDividerVerified\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mDividerVerified:Landroid/view/View;

    .line 22
    const v1, 0x7f08025c

    const-string/jumbo v2, "field \'mDividerUnverified\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    iput-object v0, p1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mDividerUnverified:Landroid/view/View;

    .line 24
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mListViewVerifiedNumbers:Lcom/airbnb/android/views/LinearListView;

    .line 28
    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mListViewUnverifiedNumbers:Lcom/airbnb/android/views/LinearListView;

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mBtnAddNumber:Lcom/airbnb/android/views/StickyButton;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mHeaderVerified:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mHeaderUnverified:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mDividerVerified:Landroid/view/View;

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mDividerUnverified:Landroid/view/View;

    .line 34
    return-void
.end method
