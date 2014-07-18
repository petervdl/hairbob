.class public Lcom/airbnb/android/fragments/PayoutTrustFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "PayoutTrustFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/PayoutTrustFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08024d

    const-string/jumbo v2, "field \'mBirthdayLabel\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdayLabel:Landroid/view/View;

    .line 12
    const v1, 0x7f08024e

    const-string/jumbo v2, "field \'mBirthdaySelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdaySelector:Landroid/view/View;

    .line 14
    const v1, 0x7f08024f

    const-string/jumbo v2, "field \'mBirthdaySelectorText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdaySelectorText:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f080210

    const-string/jumbo v2, "field \'mPayoutCountrySelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountrySelector:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f08020b

    const-string/jumbo v2, "field \'mPayoutStreet\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutStreet:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f08020c

    const-string/jumbo v2, "field \'mPayoutApt\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutApt:Landroid/widget/TextView;

    .line 22
    const v1, 0x7f08020d

    const-string/jumbo v2, "field \'mPayoutCity\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCity:Landroid/widget/TextView;

    .line 24
    const v1, 0x7f08020e

    const-string/jumbo v2, "field \'mPayoutState\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutState:Landroid/widget/TextView;

    .line 26
    const v1, 0x7f08020f

    const-string/jumbo v2, "field \'mPayoutZip\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutZip:Landroid/widget/TextView;

    .line 28
    const v1, 0x7f080250

    const-string/jumbo v2, "field \'mNextButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mNextButton:Landroid/widget/Button;

    .line 30
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/PayoutTrustFragment;

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdayLabel:Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdaySelector:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthdaySelectorText:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountrySelector:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutStreet:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutApt:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCity:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutState:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutZip:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mNextButton:Landroid/widget/Button;

    .line 43
    return-void
.end method
