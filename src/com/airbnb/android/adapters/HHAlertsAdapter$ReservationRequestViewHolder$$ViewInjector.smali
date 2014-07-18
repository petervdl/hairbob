.class public Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "HHAlertsAdapter$ReservationRequestViewHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;
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
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    .line 12
    const v1, 0x7f08036d

    const-string/jumbo v2, "field \'name\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->name:Landroid/widget/TextView;

    .line 14
    const v1, 0x7f080370

    const-string/jumbo v2, "field \'details\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->details:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f080371

    const-string/jumbo v2, "field \'status\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->status:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f08036e

    const-string/jumbo v2, "field \'timePassed\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f080061

    const-string/jumbo v2, "field \'unreadDot\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->unreadDot:Landroid/view/View;

    .line 22
    return-void
.end method

.method public static reset(Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->name:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->details:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->status:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->unreadDot:Landroid/view/View;

    .line 31
    return-void
.end method
