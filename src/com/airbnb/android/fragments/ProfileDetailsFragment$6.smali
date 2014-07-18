.class Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;
.super Ljava/lang/Object;
.source "ProfileDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProfileDetailsFragment;->updateReferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V
    .registers 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$300(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/models/User;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 258
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mReservationId:J
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$500(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mThreadId:J
    invoke-static {v2}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$600(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/ROAnalytics;->trackROProfileClickReferences(JJ)V

    .line 259
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$300(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$300(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ReferencesActivity;->intentForUser(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 261
    :cond_3a
    return-void
.end method
