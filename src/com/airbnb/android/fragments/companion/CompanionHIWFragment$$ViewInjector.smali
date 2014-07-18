.class public Lcom/airbnb/android/fragments/companion/CompanionHIWFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "CompanionHIWFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080168

    const-string/jumbo v2, "field \'mInterestsTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;->mInterestsTextView:Lcom/airbnb/android/views/AirTextView;

    .line 12
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;->mInterestsTextView:Lcom/airbnb/android/views/AirTextView;

    .line 16
    return-void
.end method
