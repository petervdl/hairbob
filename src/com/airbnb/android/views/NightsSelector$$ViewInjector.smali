.class public Lcom/airbnb/android/views/NightsSelector$$ViewInjector;
.super Ljava/lang/Object;
.source "NightsSelector$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/views/NightsSelector;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/views/NightsSelector;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08031c

    const-string/jumbo v2, "field \'mNightsLinearLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    .line 12
    const v1, 0x7f08031b

    const-string/jumbo v2, "field \'mNightsScrollView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    .line 14
    return-void
.end method

.method public static reset(Lcom/airbnb/android/views/NightsSelector;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/views/NightsSelector;

    .prologue
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsLinearLayout:Landroid/widget/LinearLayout;

    .line 18
    iput-object v0, p0, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    .line 19
    return-void
.end method