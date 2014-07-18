.class public Lcom/airbnb/android/fragments/EmailSignUpFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "EmailSignUpFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/EmailSignUpFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/EmailSignUpFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0801a1

    const-string/jumbo v2, "field \'mEmail\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    .line 12
    const v1, 0x7f0801a2

    const-string/jumbo v2, "field \'mPassword\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mPassword:Landroid/widget/EditText;

    .line 14
    const v1, 0x7f0801a3

    const-string/jumbo v2, "field \'mFirstName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mFirstName:Landroid/widget/EditText;

    .line 16
    const v1, 0x7f0801a4

    const-string/jumbo v2, "field \'mLastName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mLastName:Landroid/widget/EditText;

    .line 18
    const v1, 0x7f08019f

    const-string/jumbo v2, "field \'mSignUpButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignUpButton:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f0801a5

    const-string/jumbo v2, "field \'mAgreementText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mAgreementText:Landroid/widget/TextView;

    .line 22
    const v1, 0x7f0801a0

    const-string/jumbo v2, "field \'mSignInButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInButton:Landroid/widget/TextView;

    .line 24
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/EmailSignUpFragment;

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    .line 28
    iput-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mPassword:Landroid/widget/EditText;

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mFirstName:Landroid/widget/EditText;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mLastName:Landroid/widget/EditText;

    .line 31
    iput-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignUpButton:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mAgreementText:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInButton:Landroid/widget/TextView;

    .line 34
    return-void
.end method
