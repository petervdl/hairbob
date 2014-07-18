.class public Lcom/airbnb/android/fragments/NPSFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "NPSFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/NPSFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/NPSFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080230

    const-string/jumbo v2, "field \'mSubmit\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/NPSFragment;->mSubmit:Lcom/airbnb/android/views/StickyButton;

    .line 12
    const v1, 0x7f080231

    const-string/jumbo v2, "field \'mGroup\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/RadioGroup;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/NPSFragment;->mGroup:Landroid/widget/RadioGroup;

    .line 14
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/NPSFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/NPSFragment;

    .prologue
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/airbnb/android/fragments/NPSFragment;->mSubmit:Lcom/airbnb/android/views/StickyButton;

    .line 18
    iput-object v0, p0, Lcom/airbnb/android/fragments/NPSFragment;->mGroup:Landroid/widget/RadioGroup;

    .line 19
    return-void
.end method
