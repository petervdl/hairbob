.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateContentFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 607
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 610
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1800(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/airbnb/android/views/groups/IconCountButton;->setEnabled(Z)V

    .line 611
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 612
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_6c

    .line 613
    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 614
    .local v1, "currentUser":Lcom/airbnb/android/models/User;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/airbnb/android/models/groups/BaseContent;->isLikedBy(Lcom/airbnb/android/models/User;)Z

    move-result v2

    .line 616
    .local v2, "isLiked":Z
    if-eqz v2, :cond_6d

    .line 617
    const-string/jumbo v4, "tap_unlike"

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v6}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 618
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getLikeContentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1900(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/airbnb/android/requests/groups/LikeContentRequest;->destroyRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/LikeContentRequest;

    move-result-object v3

    .line 619
    .local v3, "request":Lcom/airbnb/android/requests/groups/LikeContentRequest;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$2000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/ContentStatusCounts;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/BaseContent;->getLikesCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumLikes(I)V

    .line 620
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1800(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 627
    :goto_64
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateStatusFooter()V
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$2100(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    .line 628
    invoke-virtual {v3}, Lcom/airbnb/android/requests/groups/LikeContentRequest;->execute()V

    .line 630
    .end local v1    # "currentUser":Lcom/airbnb/android/models/User;
    .end local v2    # "isLiked":Z
    .end local v3    # "request":Lcom/airbnb/android/requests/groups/LikeContentRequest;
    :cond_6c
    return-void

    .line 622
    .restart local v1    # "currentUser":Lcom/airbnb/android/models/User;
    .restart local v2    # "isLiked":Z
    :cond_6d
    const-string/jumbo v4, "tap_like"

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v6}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 623
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getLikeContentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1900(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/airbnb/android/requests/groups/LikeContentRequest;->createRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/LikeContentRequest;

    move-result-object v3

    .line 624
    .restart local v3    # "request":Lcom/airbnb/android/requests/groups/LikeContentRequest;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$2000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/ContentStatusCounts;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/BaseContent;->getLikesCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumLikes(I)V

    .line 625
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1800(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    goto :goto_64
.end method
