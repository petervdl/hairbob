.class Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupsUserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->setupActionButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mOptionsDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->access$000(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 87
    :goto_10
    :pswitch_10
    return-void

    .line 75
    :pswitch_11
    const-string/jumbo v0, "tap_email"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->access$200(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackUserCard(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 77
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->emailHost()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->access$300(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)V

    goto :goto_10

    .line 79
    :cond_35
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->showVerificationModal()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->access$400(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)V

    goto :goto_10

    .line 83
    :pswitch_3b
    const-string/jumbo v0, "tap_profile"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->access$200(Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;)Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackUserCard(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->viewProfile()V

    goto :goto_10

    .line 73
    nop

    :pswitch_data_54
    .packed-switch 0x7f0800d2
        :pswitch_11
        :pswitch_10
        :pswitch_3b
    .end packed-switch
.end method
