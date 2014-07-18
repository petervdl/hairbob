.class public Lcom/airbnb/android/views/GroupedCheck$$ViewInjector;
.super Ljava/lang/Object;
.source "GroupedCheck$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/views/GroupedCheck;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/views/GroupedCheck;
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
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCheck;->mTitle:Landroid/widget/TextView;

    .line 12
    const v1, 0x7f0802f1

    const-string/jumbo v2, "field \'mTooltip\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedTooltip;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCheck;->mTooltip:Lcom/airbnb/android/views/GroupedTooltip;

    .line 14
    const v1, 0x7f08009a

    const-string/jumbo v2, "field \'mCheckbox\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/CheckBox;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCheck;->mCheckbox:Landroid/widget/CheckBox;

    .line 16
    const v1, 0x7f0802ef

    const-string/jumbo v2, "field \'mTopBorder\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/GroupedCheck;->mTopBorder:Landroid/view/View;

    .line 18
    return-void
.end method

.method public static reset(Lcom/airbnb/android/views/GroupedCheck;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/views/GroupedCheck;

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mTitle:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mTooltip:Lcom/airbnb/android/views/GroupedTooltip;

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mCheckbox:Landroid/widget/CheckBox;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mTopBorder:Landroid/view/View;

    .line 25
    return-void
.end method
