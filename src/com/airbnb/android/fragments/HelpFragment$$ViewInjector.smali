.class public Lcom/airbnb/android/fragments/HelpFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "HelpFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/HelpFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/HelpFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0801c1

    const-string/jumbo v2, "field \'mHowItWorks\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/HelpFragment;->mHowItWorks:Landroid/view/View;

    .line 12
    const v1, 0x7f0801c2

    const-string/jumbo v2, "field \'mWhyHost\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/airbnb/android/fragments/HelpFragment;->mWhyHost:Landroid/view/View;

    .line 14
    const v1, 0x7f0801c0

    const-string/jumbo v2, "field \'mHelp\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/airbnb/android/fragments/HelpFragment;->mHelp:Landroid/view/View;

    .line 16
    const v1, 0x7f0801c3

    const-string/jumbo v2, "field \'mTermsOfService\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/airbnb/android/fragments/HelpFragment;->mTermsOfService:Landroid/view/View;

    .line 18
    const v1, 0x7f0801c4

    const-string/jumbo v2, "field \'mPrivacyPolicy\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/airbnb/android/fragments/HelpFragment;->mPrivacyPolicy:Landroid/view/View;

    .line 20
    const v1, 0x7f0801c5

    const-string/jumbo v2, "field \'mVersionCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/HelpFragment;->mVersionCell:Lcom/airbnb/android/views/GroupedCell;

    .line 22
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/HelpFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/HelpFragment;

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/fragments/HelpFragment;->mHowItWorks:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/fragments/HelpFragment;->mWhyHost:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/HelpFragment;->mHelp:Landroid/view/View;

    .line 28
    iput-object v0, p0, Lcom/airbnb/android/fragments/HelpFragment;->mTermsOfService:Landroid/view/View;

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/fragments/HelpFragment;->mPrivacyPolicy:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/fragments/HelpFragment;->mVersionCell:Lcom/airbnb/android/views/GroupedCell;

    .line 31
    return-void
.end method
