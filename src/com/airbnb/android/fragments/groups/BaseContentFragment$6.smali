.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Landroid/view/MenuItem;)V
    .registers 3

    .prologue
    .line 431
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 434
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;->val$item:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 435
    const-string/jumbo v1, "tap_flag"

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 436
    new-instance v0, Lcom/airbnb/android/requests/groups/FlagContentRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getFlagContentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1200(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/groups/FlagContentRequest;-><init>(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)V

    .line 437
    .local v0, "request":Lcom/airbnb/android/requests/groups/FlagContentRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FlagContentRequest;->execute()V

    .line 438
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/BaseContent;->markAsFlagged()V

    .line 439
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 440
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 441
    return-void
.end method
