.class public Lcom/airbnb/android/adapters/groups/ContentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/groups/BaseContent;",
        ">;"
    }
.end annotation


# instance fields
.field private mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mNotificationCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/support/v4/app/FragmentManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            ">;",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/BaseContent;>;"
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    iput v0, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mNotificationCount:I

    .line 25
    iput-object p3, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 26
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/BaseContent;

    .line 31
    .local v0, "content":Lcom/airbnb/android/models/groups/BaseContent;
    new-instance v1, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;

    invoke-direct {v1}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;-><init>()V

    .line 32
    .local v1, "contentViewTypeVisitor":Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;
    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 33
    invoke-virtual {v1}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;->getViewType()I

    move-result v2

    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/BaseContent;

    .line 44
    .local v0, "content":Lcom/airbnb/android/models/groups/BaseContent;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    .local v1, "context":Landroid/content/Context;
    if-nez p2, :cond_12

    .line 46
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v1, v4, v0}, Lcom/airbnb/android/views/groups/BaseFeedCard;->of(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/views/groups/BaseFeedCard;

    move-result-object p2

    :cond_12
    move-object v2, p2

    .line 48
    check-cast v2, Lcom/airbnb/android/views/groups/BaseFeedCard;

    .line 49
    .local v2, "feedCardView":Lcom/airbnb/android/views/groups/BaseFeedCard;
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, v0, v4}, Lcom/airbnb/android/views/groups/BaseFeedCard;->setContent(Lcom/airbnb/android/models/groups/BaseContent;Landroid/support/v4/app/FragmentManager;)V

    .line 51
    const v4, 0x7f0802ec

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, "highlight":Landroid/view/View;
    sget-object v4, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->MINE:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    iget-object v5, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget v4, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mNotificationCount:I

    if-ge p1, v4, :cond_34

    .line 53
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_33
    return-object p2

    .line 55
    :cond_34
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public setFeedType(Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;)V
    .registers 2
    .param p1, "feedType"    # Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .line 67
    return-void
.end method

.method public setGroup(Lcom/airbnb/android/models/groups/Group;)V
    .registers 3
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {p1, v0}, Lcom/airbnb/android/models/groups/Group;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 71
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getNotificationCount()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mNotificationCount:I

    .line 73
    :cond_e
    iput-object p1, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 74
    return-void
.end method

.method public setNotificationCount(I)V
    .registers 2
    .param p1, "notificationCount"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/airbnb/android/adapters/groups/ContentAdapter;->mNotificationCount:I

    .line 63
    return-void
.end method
