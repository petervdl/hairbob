.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->initializeTabHost(Landroid/widget/TabHost;Landroid/widget/TabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

.field final synthetic val$otherTabs:Landroid/widget/TabHost;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Landroid/widget/TabHost;)V
    .registers 3

    .prologue
    .line 720
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->val$otherTabs:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 724
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->MINE:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1800(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 725
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/adapters/groups/ContentAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->setNotificationCount(I)V

    .line 727
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->val$otherTabs:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 728
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->RECENT:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 729
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    sget-object v1, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->RECENT:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    # setter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1802(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;)Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .line 730
    const-string/jumbo v0, "tap_recent_tab"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 739
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/adapters/groups/ContentAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1800(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->setFeedType(Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;)V

    .line 741
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->resetFeed()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1700(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 742
    return-void

    .line 731
    :cond_51
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->POPULAR:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 732
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    sget-object v1, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->POPULAR:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    # setter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1802(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;)Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .line 733
    const-string/jumbo v0, "tap_popular_tab"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    goto :goto_3c

    .line 734
    :cond_71
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->MINE:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 735
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    sget-object v1, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->MINE:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    # setter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1802(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;)Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .line 736
    const-string/jumbo v0, "tap_following_tab"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 737
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->hideBadges()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1900(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    goto :goto_3c
.end method
