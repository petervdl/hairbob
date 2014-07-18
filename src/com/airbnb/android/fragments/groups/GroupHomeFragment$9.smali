.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$9;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->showLegalDisclaimerDialog()V
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
    .line 482
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$9;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 485
    const-string/jumbo v0, "tap_legal_disclaimer_accept"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$9;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 486
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$9;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/Group;->setNeedsDisclaimer(Z)V

    .line 488
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$DisclaimerReadEvent;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$DisclaimerReadEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$9;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->joinGroup()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 490
    return-void
.end method
