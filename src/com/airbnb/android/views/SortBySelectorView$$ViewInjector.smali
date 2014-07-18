.class public Lcom/airbnb/android/views/SortBySelectorView$$ViewInjector;
.super Ljava/lang/Object;
.source "SortBySelectorView$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/views/SortBySelectorView;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/views/SortBySelectorView;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0803ff

    const-string/jumbo v2, "field \'mSortByBestMatch\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/SortBySelectorView;->mSortByBestMatch:Landroid/widget/TextView;

    .line 12
    const v1, 0x7f080400

    const-string/jumbo v2, "field \'mSortByPrice\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/SortBySelectorView;->mSortByPrice:Landroid/widget/TextView;

    .line 14
    const v1, 0x7f080401

    const-string/jumbo v2, "field \'mSortByDistance\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/SortBySelectorView;->mSortByDistance:Landroid/widget/TextView;

    .line 16
    return-void
.end method

.method public static reset(Lcom/airbnb/android/views/SortBySelectorView;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/views/SortBySelectorView;

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSortByBestMatch:Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSortByPrice:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSortByDistance:Landroid/widget/TextView;

    .line 22
    return-void
.end method
