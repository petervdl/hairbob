.class public Lcom/airbnb/android/views/PaymentChooser$$ViewInjector;
.super Ljava/lang/Object;
.source "PaymentChooser$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/views/PaymentChooser;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/views/PaymentChooser;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08042b

    const-string/jumbo v2, "field \'mCCList\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/PaymentChooser;->mCCList:Lcom/airbnb/android/views/LinearListView;

    .line 12
    const v1, 0x7f08042a

    const-string/jumbo v2, "field \'mCCLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/PaymentChooser;->mCCLayout:Landroid/view/View;

    .line 14
    const v1, 0x7f08042d

    const-string/jumbo v2, "field \'mEditPayment\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/PaymentChooser;->mEditPayment:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f08042c

    const-string/jumbo v2, "field \'mEditPaymentSection\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/PaymentChooser;->mEditPaymentSection:Landroid/view/View;

    .line 18
    return-void
.end method

.method public static reset(Lcom/airbnb/android/views/PaymentChooser;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/views/PaymentChooser;

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mCCList:Lcom/airbnb/android/views/LinearListView;

    .line 22
    iput-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mCCLayout:Landroid/view/View;

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mEditPayment:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mEditPaymentSection:Landroid/view/View;

    .line 25
    return-void
.end method
