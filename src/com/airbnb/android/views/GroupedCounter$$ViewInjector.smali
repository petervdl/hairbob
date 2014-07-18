.class public Lcom/airbnb/android/views/GroupedCounter$$ViewInjector;
.super Ljava/lang/Object;
.source "GroupedCounter$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/views/GroupedCounter;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/views/GroupedCounter;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0802f5

    const-string/jumbo v2, "field \'mMinusButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCounter;->mMinusButton:Landroid/view/View;

    .line 12
    const v1, 0x7f0802f7

    const-string/jumbo v2, "field \'mPlusButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCounter;->mPlusButton:Landroid/view/View;

    .line 14
    const v1, 0x7f0802f6

    const-string/jumbo v2, "field \'mText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCounter;->mText:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f0802f4

    const-string/jumbo v2, "field \'mTopBorder\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCounter;->mTopBorder:Landroid/view/View;

    .line 18
    return-void
.end method

.method public static reset(Lcom/airbnb/android/views/GroupedCounter;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/views/GroupedCounter;

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinusButton:Landroid/view/View;

    .line 22
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mPlusButton:Landroid/view/View;

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mText:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mTopBorder:Landroid/view/View;

    .line 25
    return-void
.end method
