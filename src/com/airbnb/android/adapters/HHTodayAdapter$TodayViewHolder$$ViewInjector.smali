.class public Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "HHTodayAdapter$TodayViewHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080358

    const-string/jumbo v2, "field \'profileImage\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    .line 12
    const v1, 0x7f080372

    const-string/jumbo v2, "field \'arriveTime\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->arriveTime:Landroid/widget/TextView;

    .line 14
    const v1, 0x7f080370

    const-string/jumbo v2, "field \'details\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->details:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f080373

    const-string/jumbo v2, "field \'listingDescription\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->listingDescription:Landroid/widget/TextView;

    .line 18
    return-void
.end method

.method public static reset(Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    .line 22
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->arriveTime:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->details:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->listingDescription:Landroid/widget/TextView;

    .line 25
    return-void
.end method
