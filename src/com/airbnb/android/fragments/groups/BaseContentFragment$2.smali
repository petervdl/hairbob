.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$2;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateCommentForm()V
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
    .line 292
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 295
    if-eqz p2, :cond_1c

    .line 296
    const-string/jumbo v0, "comment_focused"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 300
    :goto_12
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$200(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 301
    return-void

    .line 298
    :cond_1c
    const-string/jumbo v0, "comment_unfocused"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    goto :goto_12
.end method
