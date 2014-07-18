.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$12;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 585
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 588
    const-string/jumbo v0, "tap_unjoin"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 589
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->leaveGroup()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1500(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 590
    return-void
.end method
