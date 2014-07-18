.class public Lcom/airbnb/android/views/GroupedCell$$ViewInjector;
.super Ljava/lang/Object;
.source "GroupedCell$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/views/GroupedCell;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/views/GroupedCell;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0802f0

    const-string/jumbo v2, "field \'mTitle\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCell;->mTitle:Landroid/widget/TextView;

    .line 12
    const v1, 0x7f0802f1

    invoke-virtual {p0, p2, v1}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedTooltip;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCell;->mTooltip:Lcom/airbnb/android/views/GroupedTooltip;

    .line 14
    const v1, 0x7f0802f2

    const-string/jumbo v2, "field \'mContent\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f0802ef

    const-string/jumbo v2, "field \'mTopBorder\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCell;->mTopBorder:Landroid/view/View;

    .line 18
    const v1, 0x7f0802f3

    invoke-virtual {p0, p2, v1}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCell;->mNextArrow:Landroid/view/View;

    .line 20
    return-void
.end method

.method public static reset(Lcom/airbnb/android/views/GroupedCell;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/views/GroupedCell;

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mTitle:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mTooltip:Lcom/airbnb/android/views/GroupedTooltip;

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mTopBorder:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mNextArrow:Landroid/view/View;

    .line 28
    return-void
.end method
