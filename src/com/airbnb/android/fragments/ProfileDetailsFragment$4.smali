.class Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;
.super Ljava/lang/Object;
.source "ProfileDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProfileDetailsFragment;->updateReviews()V
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
    .line 169
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    sget-object v1, Lcom/airbnb/android/fragments/ProfileDetailsFragment$7;->$SwitchMap$com$airbnb$android$fragments$ROProfileFragment$RelationshipType:[I

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mRelationshipType:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$400(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 183
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_ALL:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 185
    .local v0, "mode":Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    :goto_13
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mReservationId:J
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$500(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mThreadId:J
    invoke-static {v3}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$600(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/analytics/ROAnalytics;->trackROProfileClickReviews(JJ)V

    .line 186
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$300(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/airbnb/android/activities/ReviewsActivity;->intentForUser(Landroid/content/Context;Lcom/airbnb/android/models/User;Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void

    .line 177
    .end local v0    # "mode":Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    :pswitch_38
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_GUEST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 178
    .restart local v0    # "mode":Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    goto :goto_13

    .line 180
    .end local v0    # "mode":Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    :pswitch_3b
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_HOST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 181
    .restart local v0    # "mode":Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    goto :goto_13

    .line 175
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method
