.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$5;
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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 407
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 410
    const-string/jumbo v0, "tap_delete"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 411
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->deleteContent()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1100(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    .line 412
    return-void
.end method
